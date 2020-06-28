(module
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00c\00a\00l\00l\00-\00o\00p\00t\00i\00o\00n\00a\00l\00.\00t\00s")
 (table $0 2 funcref)
 (elem (i32.const 1) $call-optional/opt~anonymous|0@varargs)
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $call-optional/optIndirect (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (start $~start)
 (func $call-optional/opt (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.const 3
  i32.add
  i32.add
 )
 (func $call-optional/opt@varargs (param $0 i32) (result i32)
  (local $1 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const -1
    local.set $0
   end
   i32.const -2
   local.set $1
  end
  local.get $0
  local.get $1
  call $call-optional/opt
 )
 (func $start:call-optional
  (local $0 i32)
  (local $1 i32)
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $call-optional/opt@varargs
  if
   i32.const 0
   i32.const 1040
   i32.const 4
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~argumentsLength
  i32.const 4
  call $call-optional/opt@varargs
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 5
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 4
  i32.const 5
  call $call-optional/opt
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 6
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1104
  memory.size
  local.tee $1
  i32.const 16
  i32.shl
  local.tee $0
  i32.gt_u
  if
   local.get $1
   i32.const 66639
   local.get $0
   i32.sub
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $1
   local.get $0
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $0
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  i32.const 1072
  i32.const 16
  i32.store
  i32.const 1076
  i32.const 1
  i32.store
  i32.const 1080
  i32.const 0
  i32.store
  i32.const 1084
  i32.const 4
  i32.store
  i32.const 1088
  i32.const 1
  i32.store
  i32.const 1088
  global.set $call-optional/optIndirect
  i32.const 1
  global.set $~argumentsLength
  i32.const 1088
  i32.const 3
  i32.const 0
  i32.const 0
  i32.const 1088
  i32.load
  call_indirect (type $i32_i32_i32_i32_=>_i32)
  if
   i32.const 0
   i32.const 1040
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  global.set $~argumentsLength
  global.get $call-optional/optIndirect
  local.tee $0
  i32.const 3
  i32.const 4
  i32.const 0
  local.get $0
  i32.load
  call_indirect (type $i32_i32_i32_i32_=>_i32)
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 10
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  global.set $~argumentsLength
  global.get $call-optional/optIndirect
  local.tee $0
  i32.const 3
  i32.const 4
  i32.const 5
  local.get $0
  i32.load
  call_indirect (type $i32_i32_i32_i32_=>_i32)
  i32.const 12
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 11
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:call-optional
 )
 (func $call-optional/opt~anonymous|0@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const -1
    local.set $2
   end
   i32.const -2
   local.set $3
  end
  local.get $3
  local.get $1
  local.get $2
  i32.add
  i32.add
 )
)
