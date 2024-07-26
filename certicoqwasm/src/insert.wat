;; =================================================================================================================================
;; begin manual insertion 
;; =================================================================================================================================

;; =================================================================================================================================
;; assign the expected names to the imported functions

(func $get_parameter_size (param $index i32) (result i32)
  (call 0 (local.get 0))
  return)
(func $get_parameter_section (param $index i32) (param $write_location i32) (param $length i32) (param $offset i32) (result i32)
  (call 1 (local.get 0) (local.get 1) (local.get 2) (local.get 3))
  return)
(func $invoke (param $tag i32) (param $start i32) (param $length i32) (result i64)
  (call 2 (local.get 0) (local.get 1) (local.get 2))
  return)
(func $write_output (param $start i32) (param $length i32) (param $offset i32) (result i32)
  (call 3 (local.get 0) (local.get 1) (local.get 2))
  return)
(func $state_lookup_entry (param $key_start i32) (param $key_length i32) (result i64)
  (call 4 (local.get 0) (local.get 1))
  return)
(func $state_create_entry (param $key_start i32) (param $key_length i32) (result i64)
  (call 5 (local.get 0) (local.get 1))
  return)
(func $state_entry_read (param $entry i64) (param $write_location i32) (param $length i32) (param $offset i32) (result i32)
  (call 6 (local.get 0) (local.get 1) (local.get 2) (local.get 3))
  return)
(func $state_entry_write (param $entry i64) (param $read_location i32) (param $length i32) (param $offset i32) (result i32)
  (call 7 (local.get 0) (local.get 1) (local.get 2) (local.get 3))
  return)

;; =================================================================================================================================
;; Helper Functions Concordium

(func $assert_eq (param $actual i32) (param $expected i32)
  (if (i32.eq (local.get $actual) (local.get $expected))
    (then nop)
    (else unreachable)))

(func $assert_eq_64 (param $actual i64) (param $expected i64)
  (if (i64.eq (local.get $actual) (local.get $expected))
    (then nop)
    (else unreachable)))

;; local.get $actual, why indirection and not just $actual?
(func $assert_ne (param $actual i32) (param $expected i32)
  (if (i32.ne (local.get $actual) (local.get $expected))
    (then nop)
    (else unreachable)))

;; Gets an address from the parameters and asserts that the size is correct.
;; The address is saved in memory at location 0.
(func $save_addr_from_param_to_mem_0
  (call $assert_eq
    (call $get_parameter_section (i32.const 0) (i32.const 0) (i32.const 32) (i32.const 0))
    (i32.const 32))
)

;; =================================================================================================================================
;; Helper Functions CertiCoq-Wasm

;; get certicoqwasm result
(func $get_out_of_mem (result i32)
  (return (global.get 3)) ;; out_of_mem
)
(func $get_result (result i32)
  (call $assert_ne (call $get_out_of_mem) (i32.const 1))
  (return (global.get 2)) ;; result_var
)

;; lANF i63 primitive is i32 pointer to i64 in linear memory
(func $i64_to_i63 (param $val i64) (result i32) (local $res i32) 
  ;; 0 is global mem_ptr
  (local.set $res (global.get 0))
  (i64.store (global.get 0) (local.get $val)) 
  (global.set 0 (i32.add (global.get 0) (i32.const 8)))
  (return (local.get $res))
)
(func $i63_to_i64 (param $ptr i32) (result i64)
  (call $assert_ne (call $get_out_of_mem) (i32.const 1))
  (return (i64.load (local.get $ptr))) 
)

;; the parameter clos is an i32 pointing to a con_15 (lANF closure)
(func $call_closure (param $clos i32) (param $arg i32) (result i32)
  (local $fidx i32) (local $env i32)
  ;; ordinal of con_15 is 0
  (call $assert_eq (i32.load (local.get $clos)) (i32.const 0))
  
  (local.set $fidx (i32.load (i32.add (local.get $clos) (i32.const 4)))) ;; skip ordinal
  (local.set $env (i32.load (i32.add (local.get $clos) (i32.const 8)))) ;; skip ordinal, fidx
  (call_indirect (type 2) (local.get $env) (local.get $arg) (local.get $fidx))
  (return (call $get_result))
)
;; convenient uncurried function application with n args
(func $call_closure2 (param $clos i32) (param $arg1 i32) (param $arg2 i32) (result i32)
  (return (call $call_closure (call $call_closure (local.get $clos) (local.get $arg1)) (local.get $arg2)))
)
(func $call_closure3 (param $clos i32) (param $arg1 i32) (param $arg2 i32) (param $arg3 i32) (result i32)
  (return (call $call_closure2 (call $call_closure (local.get $clos) (local.get $arg1)) (local.get $arg2) (local.get $arg3)))
)
(func $call_closure4 (param $clos i32) (param $arg1 i32) (param $arg2 i32) (param $arg3 i32) (param $arg4 i32)(result i32)
  (return (call $call_closure3 (call $call_closure (local.get $clos) (local.get $arg1)) (local.get $arg2) (local.get $arg3) (local.get $arg4)))
)

;; =================================================================================================================================
;; The counter contract, see the record (COUNTER_MODULE : ConcordiumWasmMod _ _) in CounterConcordiumWasm.v.

(; running the main function returns the record COUNTER_MODULE
(representation: pointer to lin mem with tag followed by the following)

   concwmd_init : chain -> ctx -> Z (init value) -> result state
   concwmd_receive : chain -> ctx -> state -> option state -> result (state * actions)
   concwmd_encode_state : state -> i63
   concwmd_decode_state : i63 -> state
;)

(func $init_counter (export "init_counter") (param i64) (result i32)
  (i64.store (i32.const 0) (i64.const 0))
  ;; store the state in the entry whose key is 8 zeroes.
  (call $state_entry_write (call $state_create_entry (i32.const 0) (i32.const 8)) (i32.const 0) (i32.const 8) (i32.const 0))
  (return (i32.const 0)) ;; Successful init
)

(func $counter_receive_wrapper(export "counter.inc") (param i64) (result i32)
  ;; interface with concordium blockchain
  (local $entry i64)
  (local $state i64)
  (local $state_new i64)
  (i64.store (i32.const 0) (i64.const 0))
  ;; get the entry whose key is 8 zeroes
  (local.set $entry (call $state_lookup_entry (i32.const 0) (i32.const 8)))
  (call $state_entry_read (local.get $entry) (i32.const 0) (i32.const 8) (i32.const 0))
  (drop)
  ;; read the integer from the contract state
  (local.set $state (i64.load (i32.const 0)))

  (; increment ;)
  (local.set $state_new (call $counter_receive (local.get $state)))
  (; return on failure ;)
  (; (if (i64.eq (local.get $state_new) (i64.const -1)) (then (return (i32.const 1)))) ;)

  (i64.store (i32.const 0) (local.get $state_new))
  ;; update the contract state
  (call $state_entry_write (local.get $entry) (i32.const 0) (i32.const 8) (i32.const 0))
  (drop)
  ;; and then write the return value
  (call $write_output (i32.const 0) (i32.const 8) (i32.const 0))
  (drop)
  ;; and return success
  (i32.const 0)
)

;; This function calls the counter_receive function generated by CertiCoq-Wasm
(func $counter_receive (param $count_old i64) (result i64)
  (local $main_res i32)

  ;; func concwmd_encode_state
  (local $state_to_i63_clos i32)
  ;; func concwmd_decode_state
  (local $i63_to_state_clos i32)

  (local $receive_clos i32)

  ;; args for the counter_receive function
  (local $chain i32)
  (local $ctx i32)
  (local $state i32)
  (local $msg i32)

  (local $res i32) ;; final result

  ;; reserve the first 8 bytes in the linmem for concordium IO (for good measure, arbitrary choice)
  (global.set 0 (i32.add (i32.const 64) (global.get 0))) ;; global_mem_ptr
  ;; call main
  (call 9)
  (local.set $main_res (call $get_result))

  ;; concwmd_receive
  (local.set $receive_clos (i32.load (i32.add (local.get $main_res) (i32.const 8))))
  ;; concwmd_encode_state
  (local.set $state_to_i63_clos (i32.load (i32.add (local.get $main_res) (i32.const 12))))
  ;; concwmd_decode_state
  (local.set $i63_to_state_clos (i32.load (i32.add (local.get $main_res) (i32.const 16))))

  ;; -1: chain, ctx (not used in counter)
  (local.set $chain (i32.const -1))
  (local.set $ctx   (i32.const -1))
  (local.set $state (call $call_closure (local.get $i63_to_state_clos) (call $i64_to_i63 (local.get $count_old))))
  ;; TODO msg
  (local.set $msg (i32.const -1))

  ;; call the function CertiCoq-Wasm generated for the counter_receive function
  (local.set $res (call $call_closure3 (local.get $receive_clos) (local.get $chain) (local.get $ctx) (local.get $state)))
  ;; (local.set $res (call $call_closure4 (local.get $receive_clos) (local.get $chain) (local.get $ctx) (local.get $state) (local.get $msg)))

  (i64.extend_i32_s (local.get $res))
;;    (i64.add (local.get 0) (i64.const 1))
 )
;; =================================================================================================================================
;; end manual insertion
;; =================================================================================================================================
