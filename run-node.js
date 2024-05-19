import { print_i63, print_compare, print_bool, print_nat_sexp, print_nat_notation, print_list_sexp,
    print_list_notation, print_option, print_result,
    print_prod, print_positive_sexp, print_N_sexp, print_Z_sexp, print_compcert_byte_sexp, print_state,
    print_Error} from './pp.js';

import * as fs from 'fs';

const INIT_VALUE = 3;
// const INCREASE_VALUE = -3; fails as expected
const INCREASE_VALUE = 1;

function write_int (value) {
    process.stdout.write(value.toString())
}

function write_char (value) {
    var chr = String.fromCharCode(value);
    process.stdout.write(chr);
}

let importObject = {
    env: {
        write_char: write_char,
        write_int: write_int,
    }
};


// pp function for return value of counter_receive
function print_counter_receive_result(val, dataView) {
    const pp_list_actionbody = (val, _view) => {
        assertEq(val, 1, "counter_receive expected to return empty ActionBody list");
        print_list_sexp(val, dataView, (_val, _view) => {});
    };
    const pp_ok = (val, _view) => {
        print_prod(val, dataView, print_state, pp_list_actionbody)
    };
    print_result(val, dataView, pp_ok, print_Error)
}

function print_Msg(val, dataView) {
    const tag = dataView.getInt32(val, dataView, true);
    switch (tag) {
        case 0:
            process.stdout.write("(Inc ")
            break;
        case 1:
            process.stdout.write("(Dec ")
            break;
    }
    const arg = dataView.getInt32(val + 4, dataView, true);
    print_Z_sexp(arg, dataView);
    process.stdout.write(")")
}

function alloc_positive(module, dataView, n) {
    if (n <= 0) {
        console.log();
        console.log(`Expected positive n, got ${n}`);
        process.exit(1);
    }

    var str = n.toString(2);
    // console.log(str);
    let result = 1; // xH

    // skip first 1, for xH
    for (var i = 1; i < str.length; i++) {
        const gmp = module.instance.exports.bytes_used.value;        

        const tag = str.charAt(i) == "1" ? 0 /* xI */ : 1 /* xO */;
        dataView.setInt32(gmp, tag, true); 
        dataView.setInt32(gmp + 4, result, true); 
        result = gmp;
        module.instance.exports.bytes_used.value = gmp + 8;
    }
    return result;
}

function alloc_Z(module, dataView, n) {
    if (n == 0) {
        return 1; // Z0
    } else {
        const is_positive = n > 0;
        if (!is_positive) { n = -n; }

        const p = alloc_positive(module, dataView, n);
        const gmp = module.instance.exports.bytes_used.value;        

        const tag = is_positive ? 0 /* Zpos */ : 1 /* Zneg */;
        dataView.setInt32(gmp, tag, true); // Zpos
        dataView.setInt32(gmp + 4, p, true);
        module.instance.exports.bytes_used.value = gmp + 8;
        return gmp;
    }
}

function alloc_Msg_Inc(module, dataView, n) {
    const tag = 0; // Inc
    const z = alloc_Z(module, dataView, n);

    const gmp = module.instance.exports.bytes_used.value;        
    dataView.setInt32(gmp, tag, true);
    dataView.setInt32(gmp + 4, z, true);
    module.instance.exports.bytes_used.value = gmp + 8;
    return gmp;
}

function alloc_Msg_Dec(module, dataView, n) {
    const tag = 1; // Dec
    const z = alloc_Z(module, dataView, n);

    const gmp = module.instance.exports.bytes_used.value;        
    dataView.setInt32(gmp, tag, true);
    dataView.setInt32(gmp + 4, z, true);
    module.instance.exports.bytes_used.value = gmp + 8;
    return gmp;
}

function alloc_Some(module, dataView, ptr) {
    const tag = 0; // Some
    const gmp = module.instance.exports.bytes_used.value;        
    dataView.setInt32(gmp, tag, true);
    dataView.setInt32(gmp + 4, ptr, true);
    module.instance.exports.bytes_used.value = gmp + 8;
    return gmp;
}

function assertEq(expected, actual, errorMsg) {
    if (expected != actual) {
        console.log(`Expected: ${expected}, actual: ${actual}, error: ${errorMsg}.`)
        process.exit(1);
    }
}

// asserts that we didn't run out of memory
function assertSuccess(module) {
    const expected = 0;
    const actual = module.instance.exports.result_out_of_mem.value;
    assertEq(expected, actual, "result_out_of_mem")
}

(async () => {
    const bytes = fs.readFileSync("ConCert.Examples.Counter.extraction.CounterConcordiumWasm.COUNTER_MODULE.wasm");

    const obj = await WebAssembly.instantiate(
        new Uint8Array (bytes), importObject
    );
    try {
        // console.log(obj.instance.exports);

        // START EXECUTION OF MAIN
        obj.instance.exports.main_function();
        assertSuccess(obj);

        const memory = obj.instance.exports.memory;
        const dataView = new DataView(memory.buffer);

        // MAIN returns a pointer to:
        // Build_ConcordiumMod(y_482,
        //                     ConCert.Examples.Counter.Counter.counter_init_wrapper_clo_484,
        //                     ConCert.Examples.Counter.Counter.counter_receive_wrapper_clo_485,
        //                     y_483)
        //
        // y_482: "counter", we don't care
        // y_483: nil, we don't care

        // const y_482 = dataView.getInt32(obj.instance.exports.result.value + 4, true);
        // const y_483 = dataView.getInt32(obj.instance.exports.result.value + 16, true);

        // ============================================================================
        // INIT
        // ============================================================================

        const init_wrapper_clos = dataView.getInt32(obj.instance.exports.result.value + 8, true);
        const receive_wrapper_clos = dataView.getInt32(obj.instance.exports.result.value + 12, true);

        // funidx 8, type i32 (env), i32 (BaseTypes_458) -> i32
        const init_wrapper_105_funidx = dataView.getInt32(init_wrapper_clos + 4, true);
        const init_wrapper_105_funenv = dataView.getInt32(init_wrapper_clos + 8, true);

        // console.log(init_wrapper_105_funidx); // 8: _4__ConCert_Examples_Counter_Counter_counter_init_wrapper_105
        const chainBase = 0; // TODO: provide
        obj.instance.exports._4__ConCert_Examples_Counter_Counter_counter_init_wrapper_105(init_wrapper_105_funenv, chainBase);
        assertSuccess(obj);

        const y_wrapper_103_clos = obj.instance.exports.result.value;
        const y_wrapper_103_funidx = dataView.getInt32(y_wrapper_103_clos + 4, true);
        const y_wrapper_103_funenv = dataView.getInt32(y_wrapper_103_clos + 8, true);
        // console.log(y_wrapper_103_funidx); // 6: _2__y_wrapper_103

        // NOTE: counter_init is curried, provide args one by one
        const chain = 0; // TODO: provide
        obj.instance.exports._2__y_wrapper_103(y_wrapper_103_funenv, chain);
        assertSuccess(obj);

        const y_wrapper_102_clos = obj.instance.exports.result.value;
        const y_wrapper_102_funidx = dataView.getInt32(y_wrapper_102_clos + 4, true);
        const y_wrapper_102_funenv = dataView.getInt32(y_wrapper_102_clos + 8, true);
        // console.log(y_wrapper_102_funidx); // 5: _1__y_wrapper_102

        const ctxInit = 0; // TODO: provide
        obj.instance.exports._1__y_wrapper_102(y_wrapper_102_funenv, ctxInit);
        assertSuccess(obj);

        const y_wrapper_101_clos = obj.instance.exports.result.value;
        const y_wrapper_101_funidx = dataView.getInt32(y_wrapper_101_clos + 4, true);
        const y_wrapper_101_funenv = dataView.getInt32(y_wrapper_101_clos + 8, true);
        // console.log(y_wrapper_101_funidx); // 4: _0__y_wrapper_101

        const initValue = alloc_Z(obj, dataView, INIT_VALUE); // TODO: provide actual
        obj.instance.exports._0__y_wrapper_101(y_wrapper_101_funenv, initValue);
        assertSuccess(obj);

        const initResult /* : result State Error */ = obj.instance.exports.result.value;
        process.stdout.write("state after init: ");
        print_result(initResult, dataView, print_state, print_Error);
        console.log();

        // ============================================================================
        // RECEIVE
        // ============================================================================

        // counter_receive curried, obtain args one by one like init

        const receive_wrapper_funidx = dataView.getInt32(receive_wrapper_clos + 4, true);
        const receive_wrapper_funenv = dataView.getInt32(receive_wrapper_clos + 8, true);
        // console.log(receive_wrapper_funidx); // 28: _24__ConCert_Examples_Counter_Counter_counter_receive_wrapper_125
        obj.instance.exports._24__ConCert_Examples_Counter_Counter_counter_receive_wrapper_125(receive_wrapper_funenv, chainBase);
        assertSuccess(obj);

        const y_wrapper_121_clos = obj.instance.exports.result.value;
        const y_wrapper_121_funidx = dataView.getInt32(y_wrapper_121_clos + 4, true);
        const y_wrapper_121_funenv = dataView.getInt32(y_wrapper_121_clos + 8, true);
        // console.log(y_wrapper_121_funidx); // 24: _20__y_wrapper_121
        obj.instance.exports._20__y_wrapper_121(y_wrapper_121_funenv, chain);
        assertSuccess(obj);

        const y_wrapper_120_clos = obj.instance.exports.result.value;
        const y_wrapper_120_funidx = dataView.getInt32(y_wrapper_120_clos + 4, true);
        const y_wrapper_120_funenv = dataView.getInt32(y_wrapper_120_clos + 8, true);
        // console.log(y_wrapper_120_funidx); // 23: _19__y_wrapper_120

        const ctxReceive = 0; // TODO provide
        obj.instance.exports._19__y_wrapper_120(y_wrapper_120_funenv, ctxReceive);
        assertSuccess(obj);

        const y_wrapper_119_clos = obj.instance.exports.result.value;
        const y_wrapper_119_funidx = dataView.getInt32(y_wrapper_119_clos + 4, true);
        const y_wrapper_119_funenv = dataView.getInt32(y_wrapper_119_clos + 8, true);
        //console.log(y_wrapper_119_funidx); // 22: _18__y_wrapper_119

        // state obtained from counter_init
        const state = dataView.getInt32(initResult + 4, true);
        obj.instance.exports._18__y_wrapper_119(y_wrapper_119_funenv, state);
        assertSuccess(obj);

        const y_118_clos = obj.instance.exports.result.value;
        const y_118_funidx = dataView.getInt32(y_118_clos + 4, true);
        const y_118_funenv = dataView.getInt32(y_118_clos + 8, true);
        // console.log(y_118_funidx); // 21: _17__y_118

        // INCREASE COUNTER
        const msgInc = alloc_Msg_Inc(obj, dataView, INCREASE_VALUE);
        const msgOption = alloc_Some(obj, dataView, msgInc);
        obj.instance.exports._17__y_118(y_118_funenv, msgOption);
        assertSuccess(obj);

        const receiveResult = obj.instance.exports.result.value;

        process.stdout.write("state after receive: ");
        print_counter_receive_result(receiveResult, dataView);
        console.log();

    } catch (error) {
        console.log(error);
        process.exit(1);
    }
})();
