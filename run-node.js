import { print_i63, print_compare, print_bool, print_nat_sexp, print_nat_notation, print_list_sexp, print_list_notation, print_option, print_result,
         print_prod, print_positive_sexp, print_N_sexp, print_Z_sexp, print_compcert_byte_sexp, print_state } from './pp.js';

import * as fs from 'fs';

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

(async () => {
    const bytes = fs.readFileSync("ConCert.Examples.Counter.extraction.CounterConcordiumWasm.COUNTER_MODULE.wasm");

    const obj = await WebAssembly.instantiate(
        new Uint8Array (bytes), importObject
    );
    try {
        console.log(obj.instance.exports);

        // START EXECUTION OF MAIN
        obj.instance.exports.main_function();

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
        const init_wrapper_clos = dataView.getInt32(obj.instance.exports.result.value + 8, true);
        const receive_wrapper_clos = dataView.getInt32(obj.instance.exports.result.value + 12, true);
        // const receive_wrapper_funidx = dataView.getInt32(receive_wrapper_clos + 4, true); index 28
        // const y_483 = dataView.getInt32(obj.instance.exports.result.value + 16, true);

        // funidx 8, type i32 (env), i32 (BaseTypes_458) -> i32
        const init_wrapper_105_funidx = dataView.getInt32(init_wrapper_clos + 4, true);
        const init_wrapper_105_funenv = dataView.getInt32(init_wrapper_clos + 8, true);

        // console.log(init_wrapper_105_funidx); // prints 8: _4__ConCert_Examples_Counter_Counter_counter_init_wrapper_105
        const chainBase = 0; // TODO: provide
        obj.instance.exports._4__ConCert_Examples_Counter_Counter_counter_init_wrapper_105(init_wrapper_105_funenv, chainBase);
        const y_wrapper_103_clos = obj.instance.exports.result.value;
        const y_wrapper_103_funidx = dataView.getInt32(y_wrapper_103_clos + 4, true);
        const y_wrapper_103_funenv = dataView.getInt32(y_wrapper_103_clos + 8, true);
        // console.log(y_wrapper_103_funidx); // prints 6: _2__y_wrapper_103
        
        // NOTE: counter_init is curried, provide args one by one
        const chain = 0; // TODO: provide
        obj.instance.exports._2__y_wrapper_103(y_wrapper_103_funenv, chain);
        const y_wrapper_102_clos = obj.instance.exports.result.value;
        const y_wrapper_102_funidx = dataView.getInt32(y_wrapper_102_clos + 4, true);
        const y_wrapper_102_funenv = dataView.getInt32(y_wrapper_102_clos + 8, true);
        // console.log(y_wrapper_102_funidx); // prints 5: _1__y_wrapper_102

        const ctx = 0; // TODO: provide
        obj.instance.exports._1__y_wrapper_102(y_wrapper_102_funenv, ctx);
        const y_wrapper_101_clos = obj.instance.exports.result.value;
        const y_wrapper_101_funidx = dataView.getInt32(y_wrapper_101_clos + 4, true);
        const y_wrapper_101_funenv = dataView.getInt32(y_wrapper_101_clos + 8, true);
        // console.log(y_wrapper_101_funidx); // prints 4: _0__y_wrapper_101

        const initValue = 1; // TODO: provide (1 is encoding for Z0)
        obj.instance.exports._0__y_wrapper_101(y_wrapper_101_funenv, initValue);

        const initResult /* : result State Error */ = obj.instance.exports.result.value;
        print_result(initResult, dataView, print_state, print_nat_notation);
        console.log();

        // const receive_wrapper_funenv = dataView.getInt32(receive_wrapper_clos + 8, true);
        // console.log(init_wrapper_funidx, receive_wrapper_funidx);

    } catch (error) {
        console.log(error);
        process.exit(1);
    }
})();
