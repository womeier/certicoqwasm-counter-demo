(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;18;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;19;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;20;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
  (import "env" "write_char" (func (;0;) (type 1)))
  (import "env" "write_int" (func (;1;) (type 1)))
  (func (;2;) (type 1) (param i32)
    global.get 0
    local.get 0
    i32.add
    i32.const 65536
    i32.div_s
    memory.size
    i32.ge_s
    if  ;; label = @1
      i32.const 1
      memory.grow
      i32.const -1
      i32.eq
      if  ;; label = @2
        i32.const 1
        global.set 3
      end
    end)
  (func (;3;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1
    local.set 0
    i32.const 1
    local.set 1
    i32.const 1
    local.set 2
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 2
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 3
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 1
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 3
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 4
    i32.const 199
    local.set 5
    i32.const 223
    local.set 6
    i32.const 235
    local.set 7
    i32.const 221
    local.set 8
    i32.const 233
    local.set 9
    i32.const 203
    local.set 10
    i32.const 229
    local.set 11
    i32.const 1
    local.set 12
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 11
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 12
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 13
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 10
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 13
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 14
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 9
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 14
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 15
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 8
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 15
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 16
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 7
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 16
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 17
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 6
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 17
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 18
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 5
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 18
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 19
    i32.const 1
    local.set 20
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    i32.const 8
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 21
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    i32.const 28
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 4
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 22
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 19
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 21
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 12
    i32.add
    local.get 22
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 16
    i32.add
    local.get 20
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 23
    local.get 23
    global.set 2
    return)
  (func (;4;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.set 2
    local.get 2
    i32.const 7
    call_indirect (type 1)
    global.get 3
    if  ;; label = @1
      return
    end
    global.get 2
    local.set 3
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 1
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 3
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 4
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 4
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 5
    local.get 5
    global.set 2
    return)
  (func (;5;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.set 2
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.set 3
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 1
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 3
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 12
    i32.add
    local.get 2
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 4
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    i32.const 4
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 4
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 5
    local.get 5
    global.set 2
    return)
  (func (;6;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.set 2
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 1
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 2
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 3
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    i32.const 5
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 3
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 4
    local.get 4
    global.set 2
    return)
  (func (;7;) (type 1) (param i32)
    (local i32)
    local.get 0
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.set 1
        local.get 1
        global.set 2
        return
      else
        unreachable
      end
    else
      unreachable
    end)
  (func (;8;) (type 2) (param i32 i32)
    (local i32 i32)
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 1
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 2
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    i32.const 6
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 2
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 3
    local.get 3
    global.set 2
    return)
  (func (;9;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.set 3
        local.get 0
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 4
            local.get 4
            local.get 3
            local.get 2
            i32.const 9
            call_indirect (type 3)
          else
            local.get 0
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 5
              i32.const 5
              local.set 6
              local.get 5
              local.get 3
              local.get 6
              i32.const 9
              call_indirect (type 3)
            else
              unreachable
            end
          end
        else
          local.get 0
          i32.const 1
          i32.eq
          if  ;; label = @4
            i32.const 5
            local.set 7
            local.get 7
            global.set 2
            return
          else
            unreachable
          end
        end
      else
        local.get 1
        i32.load
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.set 8
          local.get 0
          i32.const 1
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.load
            i32.const 0
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 9
              i32.const 3
              local.set 10
              local.get 9
              local.get 8
              local.get 10
              i32.const 9
              call_indirect (type 3)
            else
              local.get 0
              i32.load
              i32.const 1
              i32.eq
              if  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.set 11
                local.get 11
                local.get 8
                local.get 2
                i32.const 9
                call_indirect (type 3)
              else
                unreachable
              end
            end
          else
            local.get 0
            i32.const 1
            i32.eq
            if  ;; label = @5
              i32.const 5
              local.set 12
              local.get 12
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          unreachable
        end
      end
    else
      local.get 1
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            i32.const 3
            local.set 13
            local.get 13
            global.set 2
            return
          else
            local.get 0
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              i32.const 3
              local.set 14
              local.get 14
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          local.get 0
          i32.const 1
          i32.eq
          if  ;; label = @4
            local.get 2
            global.set 2
            return
          else
            unreachable
          end
        end
      else
        unreachable
      end
    end)
  (func (;10;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    local.get 2
    local.get 0
    i32.const 11
    call_indirect (type 3)
    global.get 3
    if  ;; label = @1
      return
    end
    global.get 2
    local.set 3
    local.get 3
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      unreachable
    else
      local.get 3
      i32.const 1
      i32.eq
      if  ;; label = @2
        i32.const 3
        local.set 4
        local.get 4
        global.set 2
        return
      else
        local.get 3
        i32.const 3
        i32.eq
        if  ;; label = @3
          i32.const 1
          local.set 5
          local.get 5
          global.set 2
          return
        else
          local.get 3
          i32.const 5
          i32.eq
          if  ;; label = @4
            i32.const 3
            local.set 6
            local.get 6
            global.set 2
            return
          else
            unreachable
          end
        end
      end
    end)
  (func (;11;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 6
        local.get 2
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 2
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            local.get 2
            i32.const 4
            i32.add
            i32.load
            local.set 8
            local.get 8
            local.get 6
            local.get 1
            i32.const 9
            call_indirect (type 3)
          else
            local.get 2
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              i32.const 5
              local.set 9
              local.get 9
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          local.get 2
          i32.const 1
          i32.eq
          if  ;; label = @4
            i32.const 5
            local.set 7
            local.get 7
            global.set 2
            return
          else
            unreachable
          end
        end
      else
        local.get 0
        i32.load
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 10
          local.get 2
          i32.const 1
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 2
            i32.load
            i32.const 0
            i32.eq
            if  ;; label = @5
              i32.const 3
              local.set 12
              local.get 12
              global.set 2
              return
            else
              local.get 2
              i32.load
              i32.const 1
              i32.eq
              if  ;; label = @6
                local.get 2
                i32.const 4
                i32.add
                i32.load
                local.set 13
                local.get 13
                local.get 10
                local.get 1
                i32.const 9
                call_indirect (type 3)
                global.get 3
                if  ;; label = @7
                  return
                end
                global.get 2
                local.set 14
                local.get 14
                i32.const 1
                i32.and
                i32.eqz
                if  ;; label = @7
                  unreachable
                else
                  local.get 14
                  i32.const 1
                  i32.eq
                  if  ;; label = @8
                    i32.const 1
                    local.set 15
                    local.get 15
                    global.set 2
                    return
                  else
                    local.get 14
                    i32.const 3
                    i32.eq
                    if  ;; label = @9
                      i32.const 5
                      local.set 16
                      local.get 16
                      global.set 2
                      return
                    else
                      local.get 14
                      i32.const 5
                      i32.eq
                      if  ;; label = @10
                        i32.const 3
                        local.set 17
                        local.get 17
                        global.set 2
                        return
                      else
                        unreachable
                      end
                    end
                  end
                end
              else
                unreachable
              end
            end
          else
            local.get 2
            i32.const 1
            i32.eq
            if  ;; label = @5
              i32.const 3
              local.set 11
              local.get 11
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          unreachable
        end
      end
    else
      local.get 0
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 2
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            i32.const 3
            local.set 4
            local.get 4
            global.set 2
            return
          else
            local.get 2
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              i32.const 5
              local.set 5
              local.get 5
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          local.get 2
          i32.const 1
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 3
            local.get 3
            global.set 2
            return
          else
            unreachable
          end
        end
      else
        unreachable
      end
    end)
  (func (;12;) (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 1
        local.get 1
        i32.const 12
        call_indirect (type 1)
        global.get 3
        if  ;; label = @3
          return
        end
        global.get 2
        local.set 2
        i32.const 65536
        call 2
        global.get 3
        i32.const 1
        i32.eq
        if  ;; label = @3
          return
        end
        global.get 0
        global.set 1
        global.get 1
        i32.const 1
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 4
        i32.add
        local.get 2
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        local.set 3
        local.get 3
        global.set 2
        return
      else
        local.get 0
        i32.load
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 4
          i32.const 65536
          call 2
          global.get 3
          i32.const 1
          i32.eq
          if  ;; label = @4
            return
          end
          global.get 0
          global.set 1
          global.get 1
          i32.const 0
          i32.store
          global.get 0
          i32.const 4
          i32.add
          global.set 0
          global.get 1
          i32.const 4
          i32.add
          local.get 4
          i32.store
          global.get 0
          i32.const 4
          i32.add
          global.set 0
          global.get 1
          local.set 5
          local.get 5
          global.set 2
          return
        else
          unreachable
        end
      end
    else
      local.get 0
      i32.const 1
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 6
        i32.const 65536
        call 2
        global.get 3
        i32.const 1
        i32.eq
        if  ;; label = @3
          return
        end
        global.get 0
        global.set 1
        global.get 1
        i32.const 1
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 4
        i32.add
        local.get 6
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        local.set 7
        local.get 7
        global.set 2
        return
      else
        unreachable
      end
    end)
  (func (;13;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.set 2
        local.get 0
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 3
            local.get 3
            local.get 2
            i32.const 14
            call_indirect (type 2)
            global.get 3
            if  ;; label = @5
              return
            end
            global.get 2
            local.set 4
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 1
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 4
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 5
            local.get 5
            global.set 2
            return
          else
            local.get 0
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 6
              local.get 6
              local.get 2
              i32.const 13
              call_indirect (type 2)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 7
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 0
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 7
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 8
              local.get 8
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          local.get 0
          i32.const 1
          i32.eq
          if  ;; label = @4
            local.get 2
            i32.const 12
            call_indirect (type 1)
            global.get 3
            if  ;; label = @5
              return
            end
            global.get 2
            local.set 9
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 1
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 9
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 10
            local.get 10
            global.set 2
            return
          else
            unreachable
          end
        end
      else
        local.get 1
        i32.load
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.set 11
          local.get 0
          i32.const 1
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.load
            i32.const 0
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 12
              local.get 12
              local.get 11
              i32.const 13
              call_indirect (type 2)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 13
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 0
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 13
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 14
              local.get 14
              global.set 2
              return
            else
              local.get 0
              i32.load
              i32.const 1
              i32.eq
              if  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.set 15
                local.get 15
                local.get 11
                i32.const 13
                call_indirect (type 2)
                global.get 3
                if  ;; label = @7
                  return
                end
                global.get 2
                local.set 16
                i32.const 65536
                call 2
                global.get 3
                i32.const 1
                i32.eq
                if  ;; label = @7
                  return
                end
                global.get 0
                global.set 1
                global.get 1
                i32.const 1
                i32.store
                global.get 0
                i32.const 4
                i32.add
                global.set 0
                global.get 1
                i32.const 4
                i32.add
                local.get 16
                i32.store
                global.get 0
                i32.const 4
                i32.add
                global.set 0
                global.get 1
                local.set 17
                local.get 17
                global.set 2
                return
              else
                unreachable
              end
            end
          else
            local.get 0
            i32.const 1
            i32.eq
            if  ;; label = @5
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 0
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 11
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 18
              local.get 18
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          unreachable
        end
      end
    else
      local.get 1
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 19
            local.get 19
            i32.const 12
            call_indirect (type 1)
            global.get 3
            if  ;; label = @5
              return
            end
            global.get 2
            local.set 20
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 1
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 20
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 21
            local.get 21
            global.set 2
            return
          else
            local.get 0
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 22
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 0
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 22
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 23
              local.get 23
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          local.get 0
          i32.const 1
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 24
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 1
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 24
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 25
            local.get 25
            global.set 2
            return
          else
            unreachable
          end
        end
      else
        unreachable
      end
    end)
  (func (;14;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.set 2
        local.get 0
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 3
            local.get 3
            local.get 2
            i32.const 14
            call_indirect (type 2)
            global.get 3
            if  ;; label = @5
              return
            end
            global.get 2
            local.set 4
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 0
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 4
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 5
            local.get 5
            global.set 2
            return
          else
            local.get 0
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 6
              local.get 6
              local.get 2
              i32.const 14
              call_indirect (type 2)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 7
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 1
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 7
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 8
              local.get 8
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          local.get 0
          i32.const 1
          i32.eq
          if  ;; label = @4
            local.get 2
            i32.const 12
            call_indirect (type 1)
            global.get 3
            if  ;; label = @5
              return
            end
            global.get 2
            local.set 9
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 0
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 9
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 10
            local.get 10
            global.set 2
            return
          else
            unreachable
          end
        end
      else
        local.get 1
        i32.load
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.set 11
          local.get 0
          i32.const 1
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.load
            i32.const 0
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 12
              local.get 12
              local.get 11
              i32.const 14
              call_indirect (type 2)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 13
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 1
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 13
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 14
              local.get 14
              global.set 2
              return
            else
              local.get 0
              i32.load
              i32.const 1
              i32.eq
              if  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.set 15
                local.get 15
                local.get 11
                i32.const 13
                call_indirect (type 2)
                global.get 3
                if  ;; label = @7
                  return
                end
                global.get 2
                local.set 16
                i32.const 65536
                call 2
                global.get 3
                i32.const 1
                i32.eq
                if  ;; label = @7
                  return
                end
                global.get 0
                global.set 1
                global.get 1
                i32.const 0
                i32.store
                global.get 0
                i32.const 4
                i32.add
                global.set 0
                global.get 1
                i32.const 4
                i32.add
                local.get 16
                i32.store
                global.get 0
                i32.const 4
                i32.add
                global.set 0
                global.get 1
                local.set 17
                local.get 17
                global.set 2
                return
              else
                unreachable
              end
            end
          else
            local.get 0
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 11
              i32.const 12
              call_indirect (type 1)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 18
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 1
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 18
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 19
              local.get 19
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          unreachable
        end
      end
    else
      local.get 1
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 20
            local.get 20
            i32.const 12
            call_indirect (type 1)
            global.get 3
            if  ;; label = @5
              return
            end
            global.get 2
            local.set 21
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 0
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 21
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 22
            local.get 22
            global.set 2
            return
          else
            local.get 0
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 23
              local.get 23
              i32.const 12
              call_indirect (type 1)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 24
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 1
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 24
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 25
              local.get 25
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          local.get 0
          i32.const 1
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 26
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 0
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 26
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 27
            local.get 27
            global.set 2
            return
          else
            unreachable
          end
        end
      else
        unreachable
      end
    end)
  (func (;15;) (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 2
        i32.const 65536
        call 2
        global.get 3
        i32.const 1
        i32.eq
        if  ;; label = @3
          return
        end
        global.get 0
        global.set 1
        global.get 1
        i32.const 1
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 4
        i32.add
        local.get 2
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        local.set 3
        i32.const 65536
        call 2
        global.get 3
        i32.const 1
        i32.eq
        if  ;; label = @3
          return
        end
        global.get 0
        global.set 1
        global.get 1
        i32.const 0
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 4
        i32.add
        local.get 3
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        local.set 4
        local.get 4
        global.set 2
        return
      else
        local.get 0
        i32.load
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 5
          i32.const 65536
          call 2
          global.get 3
          i32.const 1
          i32.eq
          if  ;; label = @4
            return
          end
          global.get 0
          global.set 1
          global.get 1
          i32.const 1
          i32.store
          global.get 0
          i32.const 4
          i32.add
          global.set 0
          global.get 1
          i32.const 4
          i32.add
          local.get 5
          i32.store
          global.get 0
          i32.const 4
          i32.add
          global.set 0
          global.get 1
          local.set 6
          i32.const 65536
          call 2
          global.get 3
          i32.const 1
          i32.eq
          if  ;; label = @4
            return
          end
          global.get 0
          global.set 1
          global.get 1
          i32.const 1
          i32.store
          global.get 0
          i32.const 4
          i32.add
          global.set 0
          global.get 1
          i32.const 4
          i32.add
          local.get 6
          i32.store
          global.get 0
          i32.const 4
          i32.add
          global.set 0
          global.get 1
          local.set 7
          local.get 7
          global.set 2
          return
        else
          unreachable
        end
      end
    else
      local.get 0
      i32.const 1
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 1
        local.get 1
        global.set 2
        return
      else
        unreachable
      end
    end)
  (func (;16;) (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 1
        i32.const 65536
        call 2
        global.get 3
        i32.const 1
        i32.eq
        if  ;; label = @3
          return
        end
        global.get 0
        global.set 1
        global.get 1
        i32.const 1
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 4
        i32.add
        local.get 1
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        local.set 2
        i32.const 65536
        call 2
        global.get 3
        i32.const 1
        i32.eq
        if  ;; label = @3
          return
        end
        global.get 0
        global.set 1
        global.get 1
        i32.const 0
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 4
        i32.add
        local.get 2
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        local.set 3
        local.get 3
        global.set 2
        return
      else
        local.get 0
        i32.load
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 4
          local.get 4
          i32.const 16
          call_indirect (type 1)
          global.get 3
          if  ;; label = @4
            return
          end
          global.get 2
          local.set 5
          i32.const 65536
          call 2
          global.get 3
          i32.const 1
          i32.eq
          if  ;; label = @4
            return
          end
          global.get 0
          global.set 1
          global.get 1
          i32.const 0
          i32.store
          global.get 0
          i32.const 4
          i32.add
          global.set 0
          global.get 1
          i32.const 4
          i32.add
          local.get 5
          i32.store
          global.get 0
          i32.const 4
          i32.add
          global.set 0
          global.get 1
          local.set 6
          local.get 6
          global.set 2
          return
        else
          unreachable
        end
      end
    else
      local.get 0
      i32.const 1
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 7
        local.get 7
        global.set 2
        return
      else
        unreachable
      end
    end)
  (func (;17;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.set 2
        local.get 0
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 3
            local.get 3
            local.get 2
            i32.const 17
            call_indirect (type 2)
            global.get 3
            if  ;; label = @5
              return
            end
            global.get 2
            local.set 4
            local.get 4
            i32.const 15
            call_indirect (type 1)
          else
            local.get 0
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 5
              local.get 5
              local.get 2
              i32.const 17
              call_indirect (type 2)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 6
              local.get 6
              i32.const 1
              i32.and
              i32.eqz
              if  ;; label = @6
                local.get 6
                i32.load
                i32.const 0
                i32.eq
                if  ;; label = @7
                  local.get 6
                  i32.const 4
                  i32.add
                  i32.load
                  local.set 9
                  i32.const 65536
                  call 2
                  global.get 3
                  i32.const 1
                  i32.eq
                  if  ;; label = @8
                    return
                  end
                  global.get 0
                  global.set 1
                  global.get 1
                  i32.const 0
                  i32.store
                  global.get 0
                  i32.const 4
                  i32.add
                  global.set 0
                  global.get 1
                  i32.const 4
                  i32.add
                  local.get 9
                  i32.store
                  global.get 0
                  i32.const 4
                  i32.add
                  global.set 0
                  global.get 1
                  local.set 10
                  i32.const 65536
                  call 2
                  global.get 3
                  i32.const 1
                  i32.eq
                  if  ;; label = @8
                    return
                  end
                  global.get 0
                  global.set 1
                  global.get 1
                  i32.const 0
                  i32.store
                  global.get 0
                  i32.const 4
                  i32.add
                  global.set 0
                  global.get 1
                  i32.const 4
                  i32.add
                  local.get 10
                  i32.store
                  global.get 0
                  i32.const 4
                  i32.add
                  global.set 0
                  global.get 1
                  local.set 11
                  local.get 11
                  global.set 2
                  return
                else
                  local.get 6
                  i32.load
                  i32.const 1
                  i32.eq
                  if  ;; label = @8
                    local.get 6
                    i32.const 4
                    i32.add
                    i32.load
                    local.set 12
                    local.get 12
                    i32.const 16
                    call_indirect (type 1)
                    global.get 3
                    if  ;; label = @9
                      return
                    end
                    global.get 2
                    local.set 13
                    i32.const 65536
                    call 2
                    global.get 3
                    i32.const 1
                    i32.eq
                    if  ;; label = @9
                      return
                    end
                    global.get 0
                    global.set 1
                    global.get 1
                    i32.const 1
                    i32.store
                    global.get 0
                    i32.const 4
                    i32.add
                    global.set 0
                    global.get 1
                    i32.const 4
                    i32.add
                    local.get 13
                    i32.store
                    global.get 0
                    i32.const 4
                    i32.add
                    global.set 0
                    global.get 1
                    local.set 14
                    local.get 14
                    global.set 2
                    return
                  else
                    unreachable
                  end
                end
              else
                local.get 6
                i32.const 1
                i32.eq
                if  ;; label = @7
                  i32.const 1
                  local.set 7
                  i32.const 65536
                  call 2
                  global.get 3
                  i32.const 1
                  i32.eq
                  if  ;; label = @8
                    return
                  end
                  global.get 0
                  global.set 1
                  global.get 1
                  i32.const 0
                  i32.store
                  global.get 0
                  i32.const 4
                  i32.add
                  global.set 0
                  global.get 1
                  i32.const 4
                  i32.add
                  local.get 7
                  i32.store
                  global.get 0
                  i32.const 4
                  i32.add
                  global.set 0
                  global.get 1
                  local.set 8
                  local.get 8
                  global.set 2
                  return
                else
                  unreachable
                end
              end
            else
              unreachable
            end
          end
        else
          local.get 0
          i32.const 1
          i32.eq
          if  ;; label = @4
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 1
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 2
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 15
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 0
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 15
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 16
            local.get 16
            global.set 2
            return
          else
            unreachable
          end
        end
      else
        local.get 1
        i32.load
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.set 17
          local.get 0
          i32.const 1
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.load
            i32.const 0
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 18
              local.get 18
              local.get 17
              i32.const 17
              call_indirect (type 2)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 19
              local.get 19
              i32.const 1
              i32.and
              i32.eqz
              if  ;; label = @6
                local.get 19
                i32.load
                i32.const 0
                i32.eq
                if  ;; label = @7
                  local.get 19
                  i32.const 4
                  i32.add
                  i32.load
                  local.set 22
                  local.get 22
                  i32.const 16
                  call_indirect (type 1)
                  global.get 3
                  if  ;; label = @8
                    return
                  end
                  global.get 2
                  local.set 23
                  i32.const 65536
                  call 2
                  global.get 3
                  i32.const 1
                  i32.eq
                  if  ;; label = @8
                    return
                  end
                  global.get 0
                  global.set 1
                  global.get 1
                  i32.const 0
                  i32.store
                  global.get 0
                  i32.const 4
                  i32.add
                  global.set 0
                  global.get 1
                  i32.const 4
                  i32.add
                  local.get 23
                  i32.store
                  global.get 0
                  i32.const 4
                  i32.add
                  global.set 0
                  global.get 1
                  local.set 24
                  local.get 24
                  global.set 2
                  return
                else
                  local.get 19
                  i32.load
                  i32.const 1
                  i32.eq
                  if  ;; label = @8
                    local.get 19
                    i32.const 4
                    i32.add
                    i32.load
                    local.set 25
                    i32.const 65536
                    call 2
                    global.get 3
                    i32.const 1
                    i32.eq
                    if  ;; label = @9
                      return
                    end
                    global.get 0
                    global.set 1
                    global.get 1
                    i32.const 0
                    i32.store
                    global.get 0
                    i32.const 4
                    i32.add
                    global.set 0
                    global.get 1
                    i32.const 4
                    i32.add
                    local.get 25
                    i32.store
                    global.get 0
                    i32.const 4
                    i32.add
                    global.set 0
                    global.get 1
                    local.set 26
                    i32.const 65536
                    call 2
                    global.get 3
                    i32.const 1
                    i32.eq
                    if  ;; label = @9
                      return
                    end
                    global.get 0
                    global.set 1
                    global.get 1
                    i32.const 1
                    i32.store
                    global.get 0
                    i32.const 4
                    i32.add
                    global.set 0
                    global.get 1
                    i32.const 4
                    i32.add
                    local.get 26
                    i32.store
                    global.get 0
                    i32.const 4
                    i32.add
                    global.set 0
                    global.get 1
                    local.set 27
                    local.get 27
                    global.set 2
                    return
                  else
                    unreachable
                  end
                end
              else
                local.get 19
                i32.const 1
                i32.eq
                if  ;; label = @7
                  i32.const 1
                  local.set 20
                  i32.const 65536
                  call 2
                  global.get 3
                  i32.const 1
                  i32.eq
                  if  ;; label = @8
                    return
                  end
                  global.get 0
                  global.set 1
                  global.get 1
                  i32.const 1
                  i32.store
                  global.get 0
                  i32.const 4
                  i32.add
                  global.set 0
                  global.get 1
                  i32.const 4
                  i32.add
                  local.get 20
                  i32.store
                  global.get 0
                  i32.const 4
                  i32.add
                  global.set 0
                  global.get 1
                  local.set 21
                  local.get 21
                  global.set 2
                  return
                else
                  unreachable
                end
              end
            else
              local.get 0
              i32.load
              i32.const 1
              i32.eq
              if  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.set 28
                local.get 28
                local.get 17
                i32.const 17
                call_indirect (type 2)
                global.get 3
                if  ;; label = @7
                  return
                end
                global.get 2
                local.set 29
                local.get 29
                i32.const 15
                call_indirect (type 1)
              else
                unreachable
              end
            end
          else
            local.get 0
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 17
              i32.const 16
              call_indirect (type 1)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 30
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 0
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 30
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 31
              local.get 31
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          unreachable
        end
      end
    else
      local.get 1
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 32
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 1
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 32
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 33
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 1
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 33
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 34
            local.get 34
            global.set 2
            return
          else
            local.get 0
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 35
              local.get 35
              i32.const 16
              call_indirect (type 1)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 36
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 1
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 36
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 37
              local.get 37
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          local.get 0
          i32.const 1
          i32.eq
          if  ;; label = @4
            i32.const 1
            local.set 38
            local.get 38
            global.set 2
            return
          else
            unreachable
          end
        end
      else
        unreachable
      end
    end)
  (func (;18;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.set 2
        local.get 0
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 3
            local.get 3
            local.get 2
            i32.const 13
            call_indirect (type 2)
            global.get 3
            if  ;; label = @5
              return
            end
            global.get 2
            local.set 4
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 0
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 4
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 5
            local.get 5
            global.set 2
            return
          else
            local.get 0
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 6
              local.get 6
              local.get 2
              i32.const 17
              call_indirect (type 2)
            else
              unreachable
            end
          end
        else
          local.get 0
          i32.const 1
          i32.eq
          if  ;; label = @4
            local.get 1
            global.set 2
            return
          else
            unreachable
          end
        end
      else
        local.get 1
        i32.load
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.set 7
          local.get 0
          i32.const 1
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.load
            i32.const 0
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 8
              local.get 7
              local.get 8
              i32.const 17
              call_indirect (type 2)
            else
              local.get 0
              i32.load
              i32.const 1
              i32.eq
              if  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.set 9
                local.get 9
                local.get 7
                i32.const 13
                call_indirect (type 2)
                global.get 3
                if  ;; label = @7
                  return
                end
                global.get 2
                local.set 10
                i32.const 65536
                call 2
                global.get 3
                i32.const 1
                i32.eq
                if  ;; label = @7
                  return
                end
                global.get 0
                global.set 1
                global.get 1
                i32.const 1
                i32.store
                global.get 0
                i32.const 4
                i32.add
                global.set 0
                global.get 1
                i32.const 4
                i32.add
                local.get 10
                i32.store
                global.get 0
                i32.const 4
                i32.add
                global.set 0
                global.get 1
                local.set 11
                local.get 11
                global.set 2
                return
              else
                unreachable
              end
            end
          else
            local.get 0
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 1
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          unreachable
        end
      end
    else
      local.get 1
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 0
        global.set 2
        return
      else
        unreachable
      end
    end)
  (func (;19;) (type 1) (param i32)
    (local i32)
    local.get 0
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 1
        local.get 1
        global.set 2
        return
      else
        unreachable
      end
    else
      unreachable
    end)
  (func (;20;) (type 1) (param i32)
    (local i32)
    local.get 0
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        i32.load
        local.set 1
        local.get 1
        global.set 2
        return
      else
        unreachable
      end
    else
      unreachable
    end)
  (func (;21;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.const 24
    i32.add
    i32.load
    local.set 4
    local.get 0
    i32.const 20
    i32.add
    i32.load
    local.set 5
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    i32.const 25
    call_indirect (type 5))
  (func (;22;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 20
    i32.add
    i32.load
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.const 12
    i32.add
    i32.load
    local.set 4
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.set 5
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.set 6
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 1
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 6
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 12
    i32.add
    local.get 5
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 16
    i32.add
    local.get 4
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 20
    i32.add
    local.get 3
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 24
    i32.add
    local.get 2
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 7
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    i32.const 21
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 7
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 8
    local.get 8
    global.set 2
    return)
  (func (;23;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 16
    i32.add
    i32.load
    local.set 2
    local.get 0
    i32.const 12
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.set 4
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.set 5
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 1
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 5
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 12
    i32.add
    local.get 4
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 16
    i32.add
    local.get 3
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 20
    i32.add
    local.get 2
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 6
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    i32.const 22
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 6
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 7
    local.get 7
    global.set 2
    return)
  (func (;24;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 12
    i32.add
    i32.load
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.set 4
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 1
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 4
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 12
    i32.add
    local.get 3
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 16
    i32.add
    local.get 2
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 5
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    i32.const 23
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 5
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 6
    local.get 6
    global.set 2
    return)
  (func (;25;) (type 5) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 5
        i32.const 65536
        call 2
        global.get 3
        i32.const 1
        i32.eq
        if  ;; label = @3
          return
        end
        global.get 0
        global.set 1
        global.get 1
        i32.const 0
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 4
        i32.add
        local.get 1
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 8
        i32.add
        local.get 2
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 12
        i32.add
        local.get 4
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 16
        i32.add
        local.get 3
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        local.set 6
        local.get 6
        local.get 5
        i32.const 26
        call_indirect (type 2)
        global.get 3
        if  ;; label = @3
          return
        end
        global.get 2
        local.set 7
        local.get 7
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          local.get 7
          i32.load
          i32.const 0
          i32.eq
          if  ;; label = @4
            local.get 7
            i32.const 4
            i32.add
            i32.load
            local.set 8
            i32.const 1
            local.set 9
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 0
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 8
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 8
            i32.add
            local.get 9
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 10
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 0
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 10
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 11
            local.get 11
            global.set 2
            return
          else
            local.get 7
            i32.load
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 7
              i32.const 4
              i32.add
              i32.load
              local.set 12
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 1
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 12
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 13
              local.get 13
              global.set 2
              return
            else
              unreachable
            end
          end
        else
          unreachable
        end
      else
        unreachable
      end
    else
      local.get 0
      i32.const 1
      i32.eq
      if  ;; label = @2
        i32.const 65536
        call 2
        global.get 3
        i32.const 1
        i32.eq
        if  ;; label = @3
          return
        end
        global.get 0
        global.set 1
        global.get 1
        i32.const 1
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 4
        i32.add
        local.get 4
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        local.set 14
        local.get 14
        global.set 2
        return
      else
        unreachable
      end
    end)
  (func (;26;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.set 2
        i32.const 1
        local.set 3
        local.get 0
        i32.const 16
        i32.add
        i32.load
        local.set 4
        local.get 2
        local.get 3
        local.get 4
        i32.const 10
        call_indirect (type 3)
        global.get 3
        if  ;; label = @3
          return
        end
        global.get 2
        local.set 5
        local.get 5
        i32.const 1
        i32.and
        i32.eqz
        if  ;; label = @3
          unreachable
        else
          local.get 5
          i32.const 1
          i32.eq
          if  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 6
            local.get 6
            i32.const 19
            call_indirect (type 1)
            global.get 3
            if  ;; label = @5
              return
            end
            global.get 2
            local.set 7
            local.get 2
            local.get 7
            i32.const 18
            call_indirect (type 2)
            global.get 3
            if  ;; label = @5
              return
            end
            global.get 2
            local.set 8
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 9
            local.get 9
            i32.const 20
            call_indirect (type 1)
            global.get 3
            if  ;; label = @5
              return
            end
            global.get 2
            local.set 10
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 0
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 8
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 8
            i32.add
            local.get 10
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 11
            i32.const 65536
            call 2
            global.get 3
            i32.const 1
            i32.eq
            if  ;; label = @5
              return
            end
            global.get 0
            global.set 1
            global.get 1
            i32.const 0
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            i32.const 4
            i32.add
            local.get 11
            i32.store
            global.get 0
            i32.const 4
            i32.add
            global.set 0
            global.get 1
            local.set 12
            local.get 12
            global.set 2
            return
          else
            local.get 5
            i32.const 3
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 12
              i32.add
              i32.load
              local.set 13
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 1
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 13
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 14
              local.get 14
              global.set 2
              return
            else
              unreachable
            end
          end
        end
      else
        local.get 1
        i32.load
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 1
          i32.const 4
          i32.add
          i32.load
          local.set 15
          i32.const 1
          local.set 16
          local.get 0
          i32.const 16
          i32.add
          i32.load
          local.set 17
          local.get 15
          local.get 16
          local.get 17
          i32.const 10
          call_indirect (type 3)
          global.get 3
          if  ;; label = @4
            return
          end
          global.get 2
          local.set 18
          local.get 18
          i32.const 1
          i32.and
          i32.eqz
          if  ;; label = @4
            unreachable
          else
            local.get 18
            i32.const 1
            i32.eq
            if  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 19
              local.get 19
              i32.const 19
              call_indirect (type 1)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 20
              local.get 15
              i32.const 27
              call_indirect (type 1)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 21
              local.get 21
              local.get 20
              i32.const 18
              call_indirect (type 2)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 22
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 23
              local.get 23
              i32.const 20
              call_indirect (type 1)
              global.get 3
              if  ;; label = @6
                return
              end
              global.get 2
              local.set 24
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 0
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 22
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 8
              i32.add
              local.get 24
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 25
              i32.const 65536
              call 2
              global.get 3
              i32.const 1
              i32.eq
              if  ;; label = @6
                return
              end
              global.get 0
              global.set 1
              global.get 1
              i32.const 0
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              i32.const 4
              i32.add
              local.get 25
              i32.store
              global.get 0
              i32.const 4
              i32.add
              global.set 0
              global.get 1
              local.set 26
              local.get 26
              global.set 2
              return
            else
              local.get 18
              i32.const 3
              i32.eq
              if  ;; label = @6
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.set 27
                i32.const 65536
                call 2
                global.get 3
                i32.const 1
                i32.eq
                if  ;; label = @7
                  return
                end
                global.get 0
                global.set 1
                global.get 1
                i32.const 1
                i32.store
                global.get 0
                i32.const 4
                i32.add
                global.set 0
                global.get 1
                i32.const 4
                i32.add
                local.get 27
                i32.store
                global.get 0
                i32.const 4
                i32.add
                global.set 0
                global.get 1
                local.set 28
                local.get 28
                global.set 2
                return
              else
                unreachable
              end
            end
          end
        else
          unreachable
        end
      end
    else
      unreachable
    end)
  (func (;27;) (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      i32.const 0
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.set 2
        i32.const 65536
        call 2
        global.get 3
        i32.const 1
        i32.eq
        if  ;; label = @3
          return
        end
        global.get 0
        global.set 1
        global.get 1
        i32.const 1
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        i32.const 4
        i32.add
        local.get 2
        i32.store
        global.get 0
        i32.const 4
        i32.add
        global.set 0
        global.get 1
        local.set 3
        local.get 3
        global.set 2
        return
      else
        local.get 0
        i32.load
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 4
          i32.const 65536
          call 2
          global.get 3
          i32.const 1
          i32.eq
          if  ;; label = @4
            return
          end
          global.get 0
          global.set 1
          global.get 1
          i32.const 0
          i32.store
          global.get 0
          i32.const 4
          i32.add
          global.set 0
          global.get 1
          i32.const 4
          i32.add
          local.get 4
          i32.store
          global.get 0
          i32.const 4
          i32.add
          global.set 0
          global.get 1
          local.set 5
          local.get 5
          global.set 2
          return
        else
          unreachable
        end
      end
    else
      local.get 0
      i32.const 1
      i32.eq
      if  ;; label = @2
        i32.const 1
        local.set 1
        local.get 1
        global.set 2
        return
      else
        unreachable
      end
    end)
  (func (;28;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 4
    i32.add
    i32.load
    local.set 2
    local.get 0
    i32.const 8
    i32.add
    i32.load
    local.set 3
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    local.get 1
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 3
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 12
    i32.add
    local.get 2
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 4
    i32.const 65536
    call 2
    global.get 3
    i32.const 1
    i32.eq
    if  ;; label = @1
      return
    end
    global.get 0
    global.set 1
    global.get 1
    i32.const 0
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 4
    i32.add
    i32.const 24
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    i32.const 8
    i32.add
    local.get 4
    i32.store
    global.get 0
    i32.const 4
    i32.add
    global.set 0
    global.get 1
    local.set 5
    local.get 5
    global.set 2
    return)
  (table (;0;) 29 funcref)
  (memory (;0;) 1 30000)
  (global (;0;) (mut i32) (i32.const 0))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (global (;3;) (mut i32) (i32.const 0))
  (export "grow_mem_if_necessary" (func 2))
  (export "main_function" (func 3))
  (export "_0__y_wrapper_101" (func 4))
  (export "_1__y_wrapper_102" (func 5))
  (export "_2__y_wrapper_103" (func 6))
  (export "_3__f_case_known_104" (func 7))
  (export "_4__ConCert_Examples_Counter_Counter_counter_init_wrapper_105" (func 8))
  (export "_5__compare_cont_uncurried_uncurried_known_106" (func 9))
  (export "_6__Coq_ZArith_BinIntDef_Z_ltb_uncurried_known_107" (func 10))
  (export "_7__f_case_known_108" (func 11))
  (export "_8__succ_known_109" (func 12))
  (export "_9__add_uncurried_known_110" (func 13))
  (export "_10__add_carry_uncurried_known_111" (func 14))
  (export "_11__Coq_ZArith_BinIntDef_Z_double_known_112" (func 15))
  (export "_12__pred_double_known_113" (func 16))
  (export "_13__pos_sub_uncurried_known_114" (func 17))
  (export "_14__Coq_ZArith_BinIntDef_Z_add_uncurried_known_115" (func 18))
  (export "_15__ConCert_Examples_Counter_Counter_count_uncurried_known_116" (func 19))
  (export "_16__ConCert_Examples_Counter_Counter_owner_uncurried_known_117" (func 20))
  (export "_17__y_118" (func 21))
  (export "_18__y_wrapper_119" (func 22))
  (export "_19__y_wrapper_120" (func 23))
  (export "_20__y_wrapper_121" (func 24))
  (export "_21__ConCert_Examples_Counter_Counter_counter_receive_uncurried_uncurried_uncurried_uncurried_known_122" (func 25))
  (export "_22__f_case_123" (func 26))
  (export "_23__f_case_known_124" (func 27))
  (export "_24__ConCert_Examples_Counter_Counter_counter_receive_wrapper_125" (func 28))
  (export "result_out_of_mem" (global 3))
  (export "bytes_used" (global 0))
  (export "result" (global 2))
  (export "memory" (memory 0))
  (elem (;0;) (i32.const 0) func 0)
  (elem (;1;) (i32.const 1) func 1)
  (elem (;2;) (i32.const 2) func 2)
  (elem (;3;) (i32.const 3) func 3)
  (elem (;4;) (i32.const 4) func 4)
  (elem (;5;) (i32.const 5) func 5)
  (elem (;6;) (i32.const 6) func 6)
  (elem (;7;) (i32.const 7) func 7)
  (elem (;8;) (i32.const 8) func 8)
  (elem (;9;) (i32.const 9) func 9)
  (elem (;10;) (i32.const 10) func 10)
  (elem (;11;) (i32.const 11) func 11)
  (elem (;12;) (i32.const 12) func 12)
  (elem (;13;) (i32.const 13) func 13)
  (elem (;14;) (i32.const 14) func 14)
  (elem (;15;) (i32.const 15) func 15)
  (elem (;16;) (i32.const 16) func 16)
  (elem (;17;) (i32.const 17) func 17)
  (elem (;18;) (i32.const 18) func 18)
  (elem (;19;) (i32.const 19) func 19)
  (elem (;20;) (i32.const 20) func 20)
  (elem (;21;) (i32.const 21) func 21)
  (elem (;22;) (i32.const 22) func 22)
  (elem (;23;) (i32.const 23) func 23)
  (elem (;24;) (i32.const 24) func 24)
  (elem (;25;) (i32.const 25) func 25)
  (elem (;26;) (i32.const 26) func 26)
  (elem (;27;) (i32.const 27) func 27)
  (elem (;28;) (i32.const 28) func 28))
