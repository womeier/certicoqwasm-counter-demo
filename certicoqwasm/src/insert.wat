;; =================================================================================================================================
;; begin manual insertion 
;; =================================================================================================================================
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

  ;; get certicoqwasm result
  (func $get_result (result i32)
    (if (i32.eq (global.get 3) (i32.const 1)) (then unreachable)) ;; out_of_mem
    (return (global.get 2)) ;; result_var
  )

  ;; Helper Functions

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

  ;; The counter contract

  (func $init_counter (export "init_counter") (param i64) (result i32)
    (i64.store (i32.const 0) (i64.const 0))
    ;; store the state in the entry whose key is 8 zeroes.
    (call $state_entry_write (call $state_create_entry (i32.const 0) (i32.const 8)) (i32.const 0) (i32.const 8) (i32.const 0))
    (return (i32.const 0)) ;; Successful init
  )

  (func $inc_counter (export "counter.inc") (param i64) (result i32)
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
    (local.set $state_new (call $counter_incr_certicoqwasm (local.get $state)))
    (; return on failure ;)
    (if (i64.eq (local.get $state_new) (i64.const -1)) (then (return (i32.const 1))))

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

  (func $counter_incr_certicoqwasm (param $old_num i64) (result i64)
    (local $main_res i32)

    ;; receive_wrapper_125
    (local $receive_clos i32)
    (local $receive_fidx i32)
    (local $receive_env i32)

    ;; y_wrapper_121_clos
    (local $rec_wrapper_1_clos i32)
    (local $rec_wrapper_1_fidx i32)
    (local $rec_wrapper_1_env i32)

    ;; y_wrapper_120_clos
    (local $rec_wrapper_2_clos i32)
    (local $rec_wrapper_2_fidx i32)
    (local $rec_wrapper_2_env i32)

    ;; y_wrapper_119_clos
    (local $rec_wrapper_3_clos i32)
    (local $rec_wrapper_3_fidx i32)
    (local $rec_wrapper_3_env i32)

    ;; y_118_clos
    (local $rec_wrapper_4_clos i32)
    (local $rec_wrapper_4_fidx i32)
    (local $rec_wrapper_4_env i32)

    (local $res i32) ;; final result

    ;; reserve the first 8 bytes in the linmem for concordium IO (for good measure, arbitrary choice)
    (global.set 0 (i32.add (i32.const 64) (global.get 0))) ;; global_mem_ptr
    ;; call main
    (call 9)
    (local.set $main_res (call $get_result))
;;    (local.set $init_clos (i32.load (i32.add (local.get $main_res) (i32.const 4))))

    (local.set $receive_clos (i32.load (i32.add (local.get $main_res) (i32.const 12))))
    (local.set $receive_fidx (i32.load (i32.add (local.get $receive_clos) (i32.const 4))))
    (local.set $receive_env  (i32.load (i32.add (local.get $receive_clos) (i32.const 8))))
    ;; -1: chainBase TODO specialize properly
;;    (call 28 (i32.const -1) (local.get $receive_env))
    (call_indirect (type 2) (local.get $receive_env) (i32.const -1) (local.get $receive_fidx))
    (local.set $rec_wrapper_1_clos (call $get_result))
    (local.set $rec_wrapper_1_fidx (i32.load (i32.add (local.get $rec_wrapper_1_clos) (i32.const 4))))
    (local.set $rec_wrapper_1_env  (i32.load (i32.add (local.get $rec_wrapper_1_clos) (i32.const 8))))
    ;; -1: chain TODO
    (call_indirect (type 2) (local.get $rec_wrapper_1_env) (i32.const -1) (local.get $rec_wrapper_1_fidx))
    (local.set $rec_wrapper_2_clos (call $get_result))
    (local.set $rec_wrapper_2_fidx (i32.load (i32.add (local.get $rec_wrapper_2_clos) (i32.const 4))))
    (local.set $rec_wrapper_2_env  (i32.load (i32.add (local.get $rec_wrapper_2_clos) (i32.const 8))))
    ;; -1: ctx TODO
    (call_indirect (type 2) (local.get $rec_wrapper_2_env) (i32.const -1) (local.get $rec_wrapper_2_fidx))
    (local.set $rec_wrapper_3_clos (call $get_result))
    (local.set $rec_wrapper_3_fidx (i32.load (i32.add (local.get $rec_wrapper_3_clos) (i32.const 4))))
    (local.set $rec_wrapper_3_env  (i32.load (i32.add (local.get $rec_wrapper_3_clos) (i32.const 8))))
    ;; -1: state TODO
    (call_indirect (type 2) (local.get $rec_wrapper_3_env) (i32.const -1) (local.get $rec_wrapper_3_fidx))
    (local.set $rec_wrapper_4_clos (call $get_result))
    (local.set $rec_wrapper_4_fidx (i32.load (i32.add (local.get $rec_wrapper_4_clos) (i32.const 4))))
    (local.set $rec_wrapper_4_env  (i32.load (i32.add (local.get $rec_wrapper_4_clos) (i32.const 8))))
    ;; -1: msg TODO
(;
    (call_indirect (type 2) (local.get $rec_wrapper_4_env) (i32.const -1) (local.get $rec_wrapper_4_fidx))
;)
    (local.set $res (call $get_result))

    ;;(call_indirect (type 2) (local.get $rec_wrapper_1_env) (i32.const -1) (local.get $rec_wrapper_1_fidx))
;;    (local.set $res (local.get $receive_env))
;;    (local.set $res (local.get $rec_wrapper_2_fidx))

    (i64.extend_i32_s (local.get $res))
;;    (i64.add (local.get 0) (i64.const 1))
   )
;; =================================================================================================================================
;; end manual insertion
;; =================================================================================================================================
