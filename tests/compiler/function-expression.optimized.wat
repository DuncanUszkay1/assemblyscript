(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s")
 (table $0 18 funcref)
 (elem (i32.const 1) $start:function-expression~~anonymous|0 $start:function-expression~~anonymous|0 $start:function-expression~someName $start:function-expression~~anonymous|2 $start:function-expression~~anonymous|3 $start:function-expression~~anonymous|4 $start:function-expression~~anonymous|5 $start:function-expression~~anonymous|3 $start:function-expression~~anonymous|4 $start:function-expression~~anonymous|5 $start:function-expression~~anonymous|2 $function-expression/testGlobal~~anonymous|0~~anonymous|0 $function-expression/testGlobal~~anonymous|0 $function-expression/testGlobal~~anonymous|0~~anonymous|0 $function-expression/testLocal~~anonymous|0 $function-expression/testGlobal~~anonymous|0~~anonymous|0 $function-expression/testField~~anonymous|0)
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $function-expression/f1 (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 0))
 (global $function-expression/f3 (mut i32) (i32.const 0))
 (global $function-expression/f4 (mut i32) (i32.const 0))
 (global $function-expression/globalFunc (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:function-expression~~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $1
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $3
  i32.const 16
  i32.add
  local.tee $1
  memory.size
  local.tee $4
  i32.const 16
  i32.shl
  local.tee $2
  i32.gt_u
  if
   local.get $4
   local.get $1
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $4
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $1
  global.set $~lib/rt/stub/offset
  local.get $3
  i32.const 16
  i32.sub
  local.tee $1
  i32.const 16
  i32.store
  local.get $1
  i32.const 1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $3
 )
 (func $start:function-expression~someName (param $0 i32)
  nop
 )
 (func $start:function-expression~~anonymous|2 (param $0 i32) (result i32)
  i32.const 1
 )
 (func $start:function-expression~~anonymous|3 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
 )
 (func $function-expression/testOmitted (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.const 2
  local.get $0
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
 )
 (func $start:function-expression~~anonymous|4 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
 )
 (func $start:function-expression~~anonymous|5 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testGlobal~~anonymous|0~~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 24
  i32.add
 )
 (func $function-expression/testGlobal~~anonymous|0 (param $0 i32) (result i32)
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 12
  i32.store
  local.get $0
 )
 (func $function-expression/testLocal~~anonymous|0 (param $0 i32) (result i32)
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 14
  i32.store
  local.get $0
 )
 (func $function-expression/testField~~anonymous|0 (param $0 i32) (result i32)
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 16
  i32.store
  local.get $0
 )
 (func $start:function-expression
  (local $0 i32)
  (local $1 i32)
  i32.const 1088
  global.set $~lib/rt/stub/offset
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  global.set $function-expression/f1
  global.get $function-expression/f1
  local.tee $0
  i32.load
  local.set $1
  local.get $0
  i32.const 1
  local.get $1
  call_indirect (type $i32_i32_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 2
  i32.store
  local.get $0
  global.set $function-expression/f2
  global.get $function-expression/f2
  local.tee $0
  i32.load
  local.set $1
  local.get $0
  i32.const 2
  local.get $1
  call_indirect (type $i32_i32_=>_i32)
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 3
  i32.store
  local.get $0
  global.set $function-expression/f3
  global.get $function-expression/f3
  local.tee $0
  i32.load
  local.set $1
  local.get $0
  local.get $1
  call_indirect (type $i32_=>_none)
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 4
  i32.store
  local.get $0
  global.set $function-expression/f4
  global.get $function-expression/f4
  local.tee $0
  i32.load
  local.set $1
  local.get $0
  local.get $1
  call_indirect (type $i32_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 5
  i32.store
  local.get $0
  call $function-expression/testOmitted
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 6
  i32.store
  local.get $0
  call $function-expression/testOmitted
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 7
  i32.store
  local.get $0
  call $function-expression/testOmitted
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 8
  i32.store
  local.get $0
  i32.const 1
  i32.const 2
  local.get $0
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 9
  i32.store
  local.get $0
  i32.const 1
  i32.const 2
  local.get $0
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 10
  i32.store
  local.get $0
  i32.const 1
  i32.const 2
  local.get $0
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 13
  i32.store
  local.get $0
  global.set $function-expression/globalFunc
  global.get $function-expression/globalFunc
  local.tee $0
  i32.load
  local.set $1
  local.get $0
  local.get $1
  call_indirect (type $i32_=>_i32)
  local.tee $0
  i32.const 1
  local.get $0
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 15
  i32.store
  local.get $0
  local.get $0
  i32.load
  call_indirect (type $i32_=>_i32)
  local.tee $0
  i32.const 1
  local.get $0
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 17
  i32.store
  i32.const 3
  call $~lib/rt/stub/__alloc
  local.tee $1
  local.get $0
  i32.store
  local.get $1
  i32.load
  local.tee $0
  local.get $0
  i32.load
  call_indirect (type $i32_=>_i32)
  local.tee $0
  i32.const 1
  local.get $0
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 82
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:function-expression
 )
)
