(module
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i64_i64_=>_i64 (func (param i32 i64 i64) (result i64)))
 (type $i32_f64_f64_=>_f64 (func (param i32 f64 f64) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00t\00y\00p\00e\00s\00.\00t\00s")
 (table $0 5 funcref)
 (elem (i32.const 1) $function-types/makeAdder<i32>~anonymous|0 $function-types/makeAdder<i64>~anonymous|0 $function-types/makeAdder<f64>~anonymous|0 $function-types/makeAdder<i32>~anonymous|0)
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $function-types/i32Adder (mut i32) (i32.const 0))
 (global $function-types/i64Adder (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $function-types/makeAdder<i32>~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  i32.add
 )
 (func $~lib/rt/stub/__alloc (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $2
  i32.const 16
  i32.add
  local.tee $0
  memory.size
  local.tee $3
  i32.const 16
  i32.shl
  local.tee $1
  i32.gt_u
  if
   local.get $3
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $1
   local.get $3
   local.get $1
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $1
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
  local.get $2
  i32.const 16
  i32.sub
  local.tee $0
  i32.const 16
  i32.store
  local.get $0
  i32.const 1
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $2
 )
 (func $function-types/makeAdder<i32> (result i32)
  (local $0 i32)
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
 )
 (func $function-types/makeAdder<i64>~anonymous|0 (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
  local.get $1
  local.get $2
  i64.add
 )
 (func $function-types/makeAdder<f64>~anonymous|0 (param $0 i32) (param $1 f64) (param $2 f64) (result f64)
  local.get $1
  local.get $2
  f64.add
 )
 (func $function-types/doAddWithFn<i32> (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  local.get $0
  local.get $1
  local.get $2
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
 )
 (func $start:function-types
  (local $0 i32)
  (local $1 i32)
  i32.const 1088
  global.set $~lib/rt/stub/offset
  call $function-types/makeAdder<i32>
  global.set $function-types/i32Adder
  global.get $function-types/i32Adder
  local.tee $0
  i32.load
  local.set $1
  local.get $0
  i32.const 1
  i32.const 2
  local.get $1
  call_indirect (type $i32_i32_i32_=>_i32)
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 11
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 2
  i32.store
  local.get $0
  global.set $function-types/i64Adder
  global.get $function-types/i64Adder
  local.tee $0
  i32.load
  local.set $1
  local.get $0
  i64.const 10
  i64.const 20
  local.get $1
  call_indirect (type $i32_i64_i64_=>_i64)
  i64.const 30
  i64.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 3
  i32.store
  local.get $0
  f64.const 1.5
  f64.const 2.5
  local.get $0
  i32.load
  call_indirect (type $i32_f64_f64_=>_f64)
  f64.const 4
  f64.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 17
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  i32.const 3
  global.get $function-types/i32Adder
  call $function-types/doAddWithFn<i32>
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $function-types/makeAdder<i32>
  local.tee $0
  i32.const 3
  i32.const 4
  local.get $0
  i32.load
  call_indirect (type $i32_i32_i32_=>_i32)
  i32.const 7
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $~lib/rt/stub/__alloc
  local.tee $0
  i32.const 4
  i32.store
  i32.const 4
  i32.const 5
  local.get $0
  call $function-types/doAddWithFn<i32>
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  call $function-types/makeAdder<i32>
  call $function-types/doAddWithFn<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  i32.const 2
  call $function-types/makeAdder<i32>
  call $function-types/doAddWithFn<i32>
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:function-types
 )
)
