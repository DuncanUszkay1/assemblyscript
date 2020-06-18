(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_f32_i32_i32_=>_i32 (func (param i32 i32 f32 i32 i32) (result i32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00n\00f\00e\00r\00-\00g\00e\00n\00e\00r\00i\00c\00.\00t\00s\00")
 (data (i32.const 64) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 96) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00P\00\00\00P\00\00\00\0c\00\00\00\03\00\00\00")
 (table $0 2 funcref)
 (elem (i32.const 1) $start:infer-generic~anonymous|0)
 (global $infer-generic/arr i32 (i32.const 112))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/heap/__heap_base i32 (i32.const 128))
 (export "memory" (memory $0))
 (export "test1" (func $infer-generic/test1))
 (export "test2" (func $infer-generic/test2))
 (export "test3" (func $infer-generic/test3))
 (export "test4" (func $infer-generic/test4))
 (start $~start)
 (func $infer-generic/inferCompatible<f64> (param $0 f64) (param $1 f64) (result i32)
  local.get $0
  local.get $1
  f64.eq
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $start:infer-generic~anonymous|0 (param $0 i32) (param $1 i32) (param $2 f32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  local.get $4
  call $~lib/rt/stub/__retain
  local.set $4
  local.get $1
  if (result i32)
   local.get $2
   f32.const 0
   f32.ne
  else
   i32.const 0
  end
  local.set $4
  local.get $4
  call $~lib/rt/stub/__release
  local.get $4
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
 (func $~lib/array/Array<f32>#reduce<bool> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $2
  local.set $3
  i32.const 0
  local.set $4
  local.get $0
  i32.load offset=12
  local.set $5
  loop $for-loop|0
   local.get $4
   local.get $5
   local.tee $6
   local.get $0
   i32.load offset=12
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $1
    local.set $7
    local.get $7
    local.get $3
    local.get $0
    i32.load offset=4
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.get $4
    local.get $0
    i32.const 4
    global.set $~argumentsLength
    local.get $7
    i32.load
    call_indirect (type $i32_i32_f32_i32_i32_=>_i32)
    local.set $3
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
  local.set $5
  local.get $1
  call $~lib/rt/stub/__release
  local.get $5
 )
 (func $start:infer-generic
  (local $0 i32)
  (local $1 i32)
  f64.const 1
  f64.const 1
  call $infer-generic/inferCompatible<f64>
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 46
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
  global.get $infer-generic/arr
  i32.const 4
  i32.const 0
  call $~lib/rt/stub/__alloc
  call $~lib/rt/stub/__retain
  local.set $1
  local.get $1
  i32.const 1
  i32.store
  local.get $1
  local.set $0
  local.get $0
  i32.const 0
  call $~lib/array/Array<f32>#reduce<bool>
  drop
  local.get $1
  call $~lib/rt/stub/__release
 )
 (func $infer-generic/inferPlain<f32> (param $0 f32) (result f32)
  local.get $0
 )
 (func $infer-generic/test1 (param $0 f32) (result f32)
  local.get $0
  call $infer-generic/inferPlain<f32>
 )
 (func $infer-generic/inferEncapsulatedClass<f32> (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
 )
 (func $infer-generic/test2 (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $infer-generic/inferEncapsulatedClass<f32>
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  local.get $1
 )
 (func $infer-generic/inferEncapsulatedFunction<f32,f64> (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
 )
 (func $infer-generic/test3 (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $infer-generic/inferEncapsulatedFunction<f32,f64>
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  i32.const 32
  i32.const 28
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $infer-generic/inferEncapsulatedFunctionMixed<f32,f64> (param $0 i32) (result i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
 )
 (func $infer-generic/test4 (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/stub/__retain
  local.set $0
  local.get $0
  call $infer-generic/inferEncapsulatedFunctionMixed<f32,f64>
  local.set $1
  local.get $0
  call $~lib/rt/stub/__release
  i32.const 0
  i32.const 32
  i32.const 38
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  call $start:infer-generic
 )
)
