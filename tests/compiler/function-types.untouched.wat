(module
 (type $none_=>_none (func))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_f64_f64_=>_f64 (func (param i32 f64 f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 16) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00t\00y\00p\00e\00s\00.\00t\00s\00")
 (table $0 2 funcref)
 (elem (i32.const 1) $function-types/makeAdder<f64>~anonymous|0~nonClosure)
 (global $~argumentsLength (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $function-types/makeAdder<f64>~anonymous|0~nonClosure (param $0 f64) (param $1 f64) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $~lib/rt/stub/__retain (param $0 i32) (result i32)
  local.get $0
 )
 (func $function-types/makeAdder<f64> (result i32)
  (local $0 i32)
  i32.const 1
  local.set $0
  local.get $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $0
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__retain
  drop
  local.get $0
 )
 (func $~lib/rt/stub/__release (param $0 i32)
  nop
 )
 (func $start:function-types
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  call $function-types/makeAdder<f64>
  local.tee $0
  local.set $1
  local.get $1
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result f64)
   local.get $1
   i32.const 4
   i32.shl
   f64.const 1.5
   f64.const 2.5
   i32.const 2
   global.set $~argumentsLength
   local.get $1
   i32.const 4
   i32.shl
   i32.load
   call_indirect (type $i32_f64_f64_=>_f64)
  else
   f64.const 1.5
   f64.const 2.5
   i32.const 2
   global.set $~argumentsLength
   local.get $1
   call_indirect (type $f64_f64_=>_f64)
  end
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $2
  local.get $2
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $2
   i32.const 4
   i32.shl
  else
   i32.const 0
  end
  call $~lib/rt/stub/__release
 )
 (func $~start
  call $start:function-types
 )
)
