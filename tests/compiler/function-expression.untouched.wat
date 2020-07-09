(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s\00")
 (table $0 18 funcref)
 (elem (i32.const 1) $start:function-expression~~anonymous|0 $start:function-expression~~anonymous|1 $start:function-expression~someName $start:function-expression~~anonymous|2 $start:function-expression~~anonymous|3 $start:function-expression~~anonymous|4 $start:function-expression~~anonymous|5 $function-expression/testOmittedReturn1~~anonymous|0 $function-expression/testOmittedReturn2~~anonymous|0 $function-expression/testOmittedReturn3~~anonymous|0 $function-expression/testNullable~~anonymous|0 $function-expression/testGlobal~~anonymous|0~~anonymous|0 $function-expression/testGlobal~~anonymous|0 $function-expression/testLocal~~anonymous|0~~anonymous|0 $function-expression/testLocal~~anonymous|0 $function-expression/testField~~anonymous|0~~anonymous|0 $function-expression/testField~~anonymous|0)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $function-expression/f1 (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $function-expression/f2 (mut i32) (i32.const 0))
 (global $function-expression/f3 (mut i32) (i32.const 0))
 (global $function-expression/f4 (mut i32) (i32.const 0))
 (global $function-expression/globalFunc (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 76))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:function-expression~~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  local.get $1
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  local.set $1
  local.get $1
  i32.const 16
  i32.shl
  local.set $2
  local.get $0
  local.get $2
  i32.gt_u
  if
   local.get $0
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $4
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/rt/stub/offset
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $3
  i32.const 16
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  local.set $5
  local.get $2
  local.get $5
  i32.add
  call $~lib/rt/stub/maybeGrowMemory
  local.get $2
  i32.const 16
  i32.sub
  local.set $6
  local.get $6
  local.get $5
  i32.store
  i32.const 1
  drop
  local.get $6
  i32.const 1
  i32.store offset=4
  local.get $6
  local.get $1
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~~anonymous|1 (param $0 i32) (param $1 i32) (result i32)
  local.get $1
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
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $function-expression/testOmitted (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  local.set $1
  local.get $1
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  local.get $1
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $start:function-expression~~anonymous|4 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
 )
 (func $start:function-expression~~anonymous|5 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn1~~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
 )
 (func $function-expression/testOmittedReturn1 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 8
  i32.store
  local.get $0
  local.set $1
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $function-expression/testOmittedReturn2~~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
 )
 (func $function-expression/testOmittedReturn2 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 9
  i32.store
  local.get $0
  local.set $1
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $function-expression/testOmittedReturn3~~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 42
 )
 (func $function-expression/testOmittedReturn3 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 10
  i32.store
  local.get $0
  local.set $1
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
 )
 (func $function-expression/testNullable~~anonymous|0 (param $0 i32) (result i32)
  i32.const 1
 )
 (func $function-expression/testNullable (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   i32.const 4
   i32.const 0
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $1
   local.get $1
   i32.const 11
   i32.store
   local.get $1
   local.set $2
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $3
   local.get $1
   call $~lib/rt/stub/__release
   local.get $3
   return
  else
   i32.const 0
   call $~lib/rt/stub/__retain
   return
  end
  unreachable
 )
 (func $function-expression/testGlobal~~anonymous|0~~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  i32.const 24
  local.get $1
  i32.add
 )
 (func $function-expression/testGlobal~~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 12
  i32.store
  local.get $0
  local.set $1
  local.get $1
  local.set $2
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $function-expression/testGlobal
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 13
  i32.store
  local.get $0
  local.set $1
  local.get $1
  local.tee $2
  global.get $function-expression/globalFunc
  local.tee $3
  i32.ne
  if
   local.get $2
   call $~lib/rt/stub/__retain
   local.set $2
   local.get $3
   call $~lib/rt/stub/__release
  end
  local.get $2
  global.set $function-expression/globalFunc
  global.get $function-expression/globalFunc
  local.set $2
  local.get $2
  i32.const 0
  global.set $~argumentsLength
  local.get $2
  i32.load
  call_indirect (type $i32_=>_i32)
  local.tee $3
  local.set $4
  local.get $4
  i32.const 1
  i32.const 1
  global.set $~argumentsLength
  local.get $4
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 25
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
  call $~lib/rt/stub/__release
 )
 (func $function-expression/testLocal~~anonymous|0~~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  i32.const 24
  local.get $1
  i32.add
 )
 (func $function-expression/testLocal~~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 14
  i32.store
  local.get $0
  local.set $1
  local.get $1
  local.set $2
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $function-expression/testLocal
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 15
  i32.store
  local.get $0
  local.set $1
  local.get $1
  i32.const 0
  global.set $~argumentsLength
  local.get $1
  i32.load
  call_indirect (type $i32_=>_i32)
  local.tee $2
  local.set $3
  local.get $3
  i32.const 1
  i32.const 1
  global.set $~argumentsLength
  local.get $3
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 25
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
 )
 (func $function-expression/FieldClass#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/rt/stub/__retain
  i32.store
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  call $~lib/rt/stub/__release
  local.get $0
 )
 (func $function-expression/testField~~anonymous|0~~anonymous|0 (param $0 i32) (param $1 i32) (result i32)
  i32.const 24
  local.get $1
  i32.add
 )
 (func $function-expression/testField~~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 16
  i32.store
  local.get $0
  local.set $1
  local.get $1
  local.set $2
  local.get $2
  call $~lib/rt/stub/__retain
  local.set $3
  local.get $0
  call $~lib/rt/stub/__release
  local.get $3
 )
 (func $function-expression/testField
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 17
  i32.store
  local.get $0
  local.set $1
  local.get $1
  call $function-expression/FieldClass#constructor
  local.set $2
  local.get $2
  i32.load
  local.set $3
  local.get $3
  i32.const 0
  global.set $~argumentsLength
  local.get $3
  i32.load
  call_indirect (type $i32_=>_i32)
  local.tee $4
  local.set $5
  local.get $5
  i32.const 1
  i32.const 1
  global.set $~argumentsLength
  local.get $5
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 25
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 82
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
 )
 (func $start:function-expression
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  i32.const 1
  i32.store
  local.get $0
  global.set $function-expression/f1
  global.get $function-expression/f1
  local.set $1
  local.get $1
  i32.const 1
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $2
  local.get $2
  i32.const 2
  i32.store
  local.get $2
  global.set $function-expression/f2
  global.get $function-expression/f2
  local.set $3
  local.get $3
  i32.const 2
  i32.const 1
  global.set $~argumentsLength
  local.get $3
  i32.load
  call_indirect (type $i32_i32_=>_i32)
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $4
  i32.const 3
  i32.store
  local.get $4
  global.set $function-expression/f3
  global.get $function-expression/f3
  local.set $5
  local.get $5
  i32.const 0
  global.set $~argumentsLength
  local.get $5
  i32.load
  call_indirect (type $i32_=>_none)
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $6
  local.get $6
  i32.const 4
  i32.store
  local.get $6
  global.set $function-expression/f4
  global.get $function-expression/f4
  local.set $7
  local.get $7
  i32.const 0
  global.set $~argumentsLength
  local.get $7
  i32.load
  call_indirect (type $i32_=>_i32)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $8
  local.get $8
  i32.const 5
  i32.store
  local.get $8
  local.set $9
  local.get $9
  call $function-expression/testOmitted
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $10
  local.get $10
  i32.const 6
  i32.store
  local.get $10
  local.set $11
  local.get $11
  call $function-expression/testOmitted
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $12
  local.get $12
  i32.const 7
  i32.store
  local.get $12
  local.set $13
  local.get $13
  call $function-expression/testOmitted
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $function-expression/testOmittedReturn1
  local.tee $14
  local.set $15
  local.get $15
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  local.get $15
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 34
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $function-expression/testOmittedReturn2
  local.tee $16
  local.set $17
  local.get $17
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  local.get $17
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $function-expression/testOmittedReturn3
  local.tee $18
  local.set $19
  local.get $19
  i32.const 1
  i32.const 2
  i32.const 2
  global.set $~argumentsLength
  local.get $19
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 36
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $function-expression/testNullable
  local.tee $20
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 45
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $function-expression/testGlobal
  call $function-expression/testLocal
  call $function-expression/testField
  local.get $0
  call $~lib/rt/stub/__release
  local.get $2
  call $~lib/rt/stub/__release
  local.get $4
  call $~lib/rt/stub/__release
  local.get $6
  call $~lib/rt/stub/__release
  local.get $8
  call $~lib/rt/stub/__release
  local.get $10
  call $~lib/rt/stub/__release
  local.get $12
  call $~lib/rt/stub/__release
  local.get $14
  call $~lib/rt/stub/__release
  local.get $16
  call $~lib/rt/stub/__release
  local.get $18
  call $~lib/rt/stub/__release
  local.get $20
  call $~lib/rt/stub/__release
 )
 (func $~start
  call $start:function-expression
 )
)
