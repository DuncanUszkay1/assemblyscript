(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1072) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1136) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1184) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00c\00l\00o\00s\00u\00r\00e\00-\00c\00o\00m\00m\00o\00n\00-\00j\00s\00-\00p\00a\00t\00t\00e\00r\00n\00s\00.\00t\00s")
 (data (i32.const 1264) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1312) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1360) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1424) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 1536) "\06\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\00\"\t")
 (table $0 11 funcref)
 (elem (i32.const 1) $start:closure-common-js-patterns~anonymous|0~nonClosure $start:closure-common-js-patterns~anonymous|1~anonymous|0~nonClosure $start:closure-common-js-patterns~anonymous|1~anonymous|0~nonClosure $start:closure-common-js-patterns~anonymous|1~nonClosure $start:closure-common-js-patterns~anonymous|2~anonymous|0 $start:closure-common-js-patterns~anonymous|2~anonymous|0 $start:closure-common-js-patterns~anonymous|2~nonClosure $start:closure-common-js-patterns~anonymous|3~nonClosure $start:closure-common-js-patterns~anonymous|3~nonClosure $closure-common-js-patterns/subscribe~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $closure-common-js-patterns/myInstanceThing (mut i32) (i32.const 0))
 (global $closure-common-js-patterns/generatedPlusOne (mut i32) (i32.const 0))
 (global $closure-common-js-patterns/generatedPlusTwo (mut i32) (i32.const 0))
 (global $closure-common-js-patterns/subscriptions (mut i32) (i32.const 0))
 (global $closure-common-js-patterns/globalSubVar (mut i32) (i32.const 0))
 (global $closure-common-js-patterns/unsubPlusOne (mut i32) (i32.const 0))
 (global $closure-common-js-patterns/unsubPlusTwo (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1536))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 277
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 279
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $4
   i32.const 7
   i32.sub
   local.set $4
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $4
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 292
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $3
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $3
   i32.store offset=20
  end
  local.get $3
  if
   local.get $3
   local.get $5
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $2
  local.get $4
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $2
   local.get $4
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   i32.store offset=96
   local.get $3
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $3
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.set $1
    local.get $3
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 205
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 207
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    local.get $3
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $7
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1040
    i32.const 228
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $7
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 243
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 16
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 244
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $2
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $6
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 260
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $3
  i32.store offset=20
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 386
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1040
    i32.const 396
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1040
    i32.const 408
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/maybeInitialize (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $0
  i32.eqz
  if
   i32.const 1
   memory.size
   local.tee $0
   i32.gt_s
   if (result i32)
    i32.const 1
    local.get $0
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   i32.const 1600
   local.tee $0
   i32.const 0
   i32.store
   i32.const 3168
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $1
    i32.const 23
    i32.lt_u
    if
     local.get $1
     i32.const 2
     i32.shl
     i32.const 1600
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $1
       i32.const 4
       i32.shl
       local.get $2
       i32.add
       i32.const 2
       i32.shl
       i32.const 1600
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   i32.const 1600
   i32.const 3184
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 1600
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 1088
   i32.const 1040
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  i32.const 0
  local.get $2
  i32.const 23
  i32.lt_u
  select
  i32.eqz
  if
   i32.const 0
   i32.const 1040
   i32.const 338
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1040
     i32.const 351
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1040
   i32.const 365
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   local.get $1
   i32.const 16
   i32.add
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.tee $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/tlsf/collectLock
  if
   i32.const 0
   i32.const 1040
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.tee $4
  call $~lib/rt/tlsf/searchBlock
  local.tee $3
  i32.eqz
  if
   i32.const 1
   global.set $~lib/rt/tlsf/collectLock
   i32.const 0
   global.set $~lib/rt/tlsf/collectLock
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/searchBlock
   local.tee $3
   i32.eqz
   if
    i32.const 16
    memory.size
    local.tee $3
    i32.const 16
    i32.shl
    i32.const 16
    i32.sub
    local.get $0
    i32.load offset=1568
    i32.ne
    i32.shl
    local.get $4
    i32.const 1
    i32.const 27
    local.get $4
    i32.clz
    i32.sub
    i32.shl
    i32.const 1
    i32.sub
    i32.add
    local.get $4
    local.get $4
    i32.const 536870904
    i32.lt_u
    select
    i32.add
    i32.const 65535
    i32.add
    i32.const -65536
    i32.and
    i32.const 16
    i32.shr_u
    local.set $5
    local.get $3
    local.get $5
    local.get $3
    local.get $5
    i32.gt_s
    select
    memory.grow
    i32.const 0
    i32.lt_s
    if
     local.get $5
     memory.grow
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
    local.get $0
    local.get $3
    i32.const 16
    i32.shl
    memory.size
    i32.const 16
    i32.shl
    call $~lib/rt/tlsf/addMemory
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/searchBlock
    local.tee $3
    i32.eqz
    if
     i32.const 0
     i32.const 1040
     i32.const 513
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $4
  i32.lt_u
  if
   i32.const 0
   i32.const 1040
   i32.const 521
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $4
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1588
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   i32.load offset=4
   local.tee $2
   i32.const -268435456
   i32.and
   local.get $2
   i32.const 1
   i32.add
   i32.const -268435456
   i32.and
   i32.ne
   if
    i32.const 0
    i32.const 1152
    i32.const 109
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   i32.load
   i32.const 1
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 112
    i32.const 14
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 1588
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $start:closure-common-js-patterns~anonymous|0~nonClosure (result i32)
  i32.const 1
 )
 (func $start:closure-common-js-patterns~anonymous|1~anonymous|0~nonClosure (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.add
 )
 (func $start:closure-common-js-patterns~anonymous|1~nonClosure (result i32)
  (local $0 i32)
  i32.const 8
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.store8
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 1
  i32.store8
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
 )
 (func $start:closure-common-js-patterns~anonymous|2~anonymous|0 (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 24
  i32.add
 )
 (func $start:closure-common-js-patterns~anonymous|2~nonClosure (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 8
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 6
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 4
  i32.shr_s
  i32.const -2147483648
  i32.or
  local.tee $0
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
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $1
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   local.get $1
   i32.add
   i32.const 4
   i32.sub
   local.tee $2
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=2
   local.get $2
   i32.const 0
   i32.store8 offset=1
   local.get $1
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $2
   i32.const 0
   i32.store8
   local.get $1
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $2
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   local.get $1
   local.get $2
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $start:closure-common-js-patterns~anonymous|3~nonClosure
  global.get $closure-common-js-patterns/globalSubVar
  i32.const 1
  i32.add
  global.set $closure-common-js-patterns/globalSubVar
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $4
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.set $4
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $3
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $4
       i32.const 8
       i32.sub
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.set $0
       local.get $1
       i32.const 8
       i32.add
       local.set $1
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $4
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $while-continue|2
     end
    end
   else
    local.get $1
    i32.const 7
    i32.and
    local.get $0
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $0
      local.get $4
      i32.add
      i32.const 7
      i32.and
      if
       local.get $4
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $4
       i32.const 1
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $4
      i32.const 8
      i32.ge_u
      if
       local.get $4
       i32.const 8
       i32.sub
       local.tee $4
       local.get $0
       i32.add
       local.get $1
       local.get $4
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $4
     if
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      local.get $0
      i32.add
      local.get $1
      local.get $4
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/reallocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.tee $3
  local.get $1
  i32.load
  local.tee $5
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $6
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $5
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $5
    i32.const 3
    i32.and
    local.get $4
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $3
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $3
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  i32.const 1588
  i32.ge_u
  if
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $3
 )
 (func $~lib/array/ensureSize (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  local.tee $4
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435452
   i32.gt_u
   if
    i32.const 1280
    i32.const 1328
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $3
   call $~lib/rt/tlsf/maybeInitialize
   local.set $5
   local.get $3
   i32.const 16
   i32.sub
   local.set $2
   local.get $3
   i32.const 15
   i32.and
   i32.eqz
   i32.const 0
   local.get $3
   select
   if (result i32)
    local.get $2
    i32.load
    i32.const 1
    i32.and
    i32.eqz
   else
    i32.const 0
   end
   if (result i32)
    local.get $2
    i32.load offset=4
    i32.const -268435456
    i32.and
    i32.eqz
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 1040
    i32.const 581
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.get $5
   local.get $2
   local.get $1
   i32.const 2
   i32.shl
   local.tee $2
   call $~lib/rt/tlsf/reallocateBlock
   i32.const 16
   i32.add
   local.tee $1
   i32.add
   local.get $2
   local.get $4
   i32.sub
   call $~lib/memory/memory.fill
   local.get $1
   local.get $3
   i32.ne
   if
    local.get $0
    local.get $1
    i32.store
    local.get $0
    local.get $1
    i32.store offset=4
   end
   local.get $0
   local.get $2
   i32.store offset=8
  end
 )
 (func "$~lib/array/Array<() => void>#indexOf" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 4
  i32.shl
  i32.const 0
  local.get $1
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  select
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.load offset=12
  local.tee $3
  if (result i32)
   i32.const 0
   local.get $3
   i32.ge_s
  else
   i32.const 1
  end
  if
   local.get $1
   i32.const 4
   i32.shl
   i32.const 0
   local.get $1
   i32.const -2147483648
   i32.and
   i32.const -2147483648
   i32.eq
   select
   call $~lib/rt/pure/__release
   i32.const -1
   return
  end
  local.get $0
  i32.load offset=4
  local.set $0
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $1
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.eq
    if
     local.get $1
     i32.const 4
     i32.shl
     i32.const 0
     local.get $1
     i32.const -2147483648
     i32.and
     i32.const -2147483648
     i32.eq
     select
     call $~lib/rt/pure/__release
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 4
  i32.shl
  i32.const 0
  local.get $1
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  select
  call $~lib/rt/pure/__release
  i32.const -1
 )
 (func "$~lib/array/Array<() => void>#splice" (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.tee $3
  local.set $2
  i32.const 16
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  local.tee $4
  i32.const 1
  local.get $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.tee $1
  i32.sub
  local.tee $2
  i32.const 1
  local.get $2
  i32.lt_s
  select
  local.tee $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  i32.const 2
  i32.shl
  local.tee $5
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $6
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $2
  i32.store offset=12
  local.get $4
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.tee $5
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.tee $6
  local.get $2
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $3
  local.get $1
  local.get $2
  i32.add
  local.tee $1
  i32.ne
  if
   local.get $6
   local.get $5
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   local.get $1
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  i32.store offset=12
  local.get $4
 )
 (func $closure-common-js-patterns/subscribe~anonymous|0 (param $0 i32)
  global.get $closure-common-js-patterns/subscriptions
  local.get $0
  i32.load offset=4
  call "$~lib/array/Array<() => void>#indexOf"
  local.tee $0
  i32.const -1
  i32.gt_s
  if
   global.get $closure-common-js-patterns/subscriptions
   local.get $0
   call "$~lib/array/Array<() => void>#splice"
   call $~lib/rt/pure/__release
  end
 )
 (func $closure-common-js-patterns/subscribe (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.const 4
  i32.shl
  local.tee $2
  i32.const 0
  local.get $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  local.tee $3
  select
  call $~lib/rt/pure/__retain
  drop
  global.get $closure-common-js-patterns/subscriptions
  local.set $1
  local.get $2
  i32.const 0
  local.get $3
  select
  local.tee $2
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  local.get $1
  i32.load offset=12
  local.tee $3
  i32.const 1
  i32.add
  local.tee $4
  call $~lib/array/ensureSize
  local.get $1
  i32.load offset=4
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $0
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.get $4
  i32.store offset=12
  local.get $2
  call $~lib/rt/pure/__release
  i32.const 8
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 10
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 4
  i32.shr_s
  i32.const -2147483648
  i32.or
  local.tee $2
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
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 4
  i32.shl
  i32.const 0
  local.get $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  select
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $closure-common-js-patterns/publish
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  loop $for-loop|0
   local.get $2
   global.get $closure-common-js-patterns/subscriptions
   i32.load offset=12
   i32.lt_s
   if
    local.get $2
    global.get $closure-common-js-patterns/subscriptions
    local.tee $1
    i32.load offset=12
    i32.ge_u
    if
     i32.const 1376
     i32.const 1328
     i32.const 104
     i32.const 42
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    i32.load offset=4
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $1
    i32.const -2147483648
    i32.and
    i32.const -2147483648
    i32.eq
    if (result i32)
     local.get $1
     i32.const 4
     i32.shl
    else
     i32.const 0
    end
    call $~lib/rt/pure/__retain
    drop
    local.get $1
    i32.eqz
    if
     i32.const 1440
     i32.const 1328
     i32.const 108
     i32.const 40
     call $~lib/builtins/abort
     unreachable
    end
    local.get $1
    local.tee $0
    i32.const -2147483648
    i32.and
    i32.const -2147483648
    i32.eq
    if
     local.get $0
     i32.const 4
     i32.shl
     local.tee $0
     local.get $0
     i32.load
     call_indirect (type $i32_=>_none)
    else
     local.get $0
     call_indirect (type $none_=>_none)
    end
    local.get $1
    i32.const 4
    i32.shl
    i32.const 0
    local.get $1
    i32.const -2147483648
    i32.and
    i32.const -2147483648
    i32.eq
    select
    call $~lib/rt/pure/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
 )
 (func $start:closure-common-js-patterns
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  call $start:closure-common-js-patterns~anonymous|1~nonClosure
  local.tee $5
  call $~lib/rt/pure/__retain
  global.set $closure-common-js-patterns/myInstanceThing
  global.get $closure-common-js-patterns/myInstanceThing
  i32.load8_u
  i32.const 0
  i32.ne
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 38
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-common-js-patterns/myInstanceThing
  i32.load offset=4
  local.tee $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $0
   i32.const 4
   i32.shl
   local.tee $0
   i32.const 24
   local.get $0
   i32.load
   call_indirect (type $i32_i32_=>_i32)
  else
   i32.const 24
   local.get $0
   call_indirect (type $i32_=>_i32)
  end
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $start:closure-common-js-patterns~anonymous|2~nonClosure
  local.tee $2
  local.tee $0
  i32.const 4
  i32.shl
  i32.const 0
  local.get $2
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  select
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  global.set $closure-common-js-patterns/generatedPlusOne
  i32.const 2
  call $start:closure-common-js-patterns~anonymous|2~nonClosure
  local.tee $3
  local.tee $0
  i32.const 4
  i32.shl
  i32.const 0
  local.get $3
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  select
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  global.set $closure-common-js-patterns/generatedPlusTwo
  global.get $closure-common-js-patterns/generatedPlusOne
  local.tee $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $0
   i32.const 4
   i32.shl
   local.tee $0
   local.get $0
   i32.load
   call_indirect (type $i32_=>_i32)
  else
   local.get $0
   call_indirect (type $none_=>_i32)
  end
  i32.const 25
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 60
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-common-js-patterns/generatedPlusTwo
  local.tee $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $0
   i32.const 4
   i32.shl
   local.tee $0
   local.get $0
   i32.load
   call_indirect (type $i32_=>_i32)
  else
   local.get $0
   call_indirect (type $none_=>_i32)
  end
  i32.const 26
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 61
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 16
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  i32.const 0
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.tee $0
  i32.const 0
  call $~lib/memory/memory.fill
  local.get $0
  local.set $4
  local.get $0
  local.get $1
  i32.load
  local.tee $6
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $1
  local.get $4
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  global.set $closure-common-js-patterns/subscriptions
  i32.const 8
  call $closure-common-js-patterns/subscribe
  global.set $closure-common-js-patterns/unsubPlusOne
  i32.const 9
  call $closure-common-js-patterns/subscribe
  global.set $closure-common-js-patterns/unsubPlusTwo
  global.get $closure-common-js-patterns/globalSubVar
  if
   i32.const 0
   i32.const 1200
   i32.const 105
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-common-js-patterns/subscriptions
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 106
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-common-js-patterns/publish
  global.get $closure-common-js-patterns/globalSubVar
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 110
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-common-js-patterns/subscriptions
  i32.load offset=12
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 111
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-common-js-patterns/unsubPlusOne
  local.tee $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if
   local.get $0
   i32.const 4
   i32.shl
   local.tee $0
   local.get $0
   i32.load
   call_indirect (type $i32_=>_none)
  else
   local.get $0
   call_indirect (type $none_=>_none)
  end
  global.get $closure-common-js-patterns/globalSubVar
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 115
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-common-js-patterns/subscriptions
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 116
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-common-js-patterns/publish
  global.get $closure-common-js-patterns/globalSubVar
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 120
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-common-js-patterns/subscriptions
  i32.load offset=12
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 121
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-common-js-patterns/unsubPlusTwo
  local.tee $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if
   local.get $0
   i32.const 4
   i32.shl
   local.tee $0
   local.get $0
   i32.load
   call_indirect (type $i32_=>_none)
  else
   local.get $0
   call_indirect (type $none_=>_none)
  end
  global.get $closure-common-js-patterns/globalSubVar
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 125
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-common-js-patterns/subscriptions
  i32.load offset=12
  if
   i32.const 0
   i32.const 1200
   i32.const 126
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  call $closure-common-js-patterns/publish
  global.get $closure-common-js-patterns/globalSubVar
  i32.const 5
  i32.ne
  if
   i32.const 0
   i32.const 1200
   i32.const 130
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $closure-common-js-patterns/subscriptions
  i32.load offset=12
  if
   i32.const 0
   i32.const 1200
   i32.const 131
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $2
  i32.const 4
  i32.shl
  i32.const 0
  local.get $2
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  select
  call $~lib/rt/pure/__release
  local.get $3
  i32.const 4
  i32.shl
  i32.const 0
  local.get $3
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  select
  call $~lib/rt/pure/__release
 )
 (func $~start
  call $start:closure-common-js-patterns
 )
 (func $~lib/rt/pure/__collect
  nop
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 1152
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   block $__inlined_func$~lib/rt/__visit_members
    block $switch$1$default
     block $switch$1$case$7
      block $switch$1$case$6
       block $switch$1$case$5
        block $switch$1$case$4
         local.get $0
         i32.const 8
         i32.add
         i32.load
         br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $switch$1$case$4 $switch$1$case$5 $switch$1$case$6 $switch$1$case$7 $switch$1$default
        end
        local.get $0
        i32.load offset=16
        local.tee $1
        if
         local.get $1
         call $~lib/rt/pure/__visit
        end
        br $__inlined_func$~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=20
       local.tee $1
       if
        local.get $1
        call $~lib/rt/pure/__visit
       end
       br $__inlined_func$~lib/rt/__visit_members
      end
      local.get $0
      i32.load offset=20
      local.tee $1
      local.get $0
      i32.load offset=28
      i32.const 2
      i32.shl
      i32.add
      local.set $3
      loop $while-continue|0
       local.get $1
       local.get $3
       i32.lt_u
       if
        local.get $1
        i32.load
        local.tee $4
        if
         local.get $4
         call $~lib/rt/pure/__visit
        end
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        br $while-continue|0
       end
      end
      local.get $0
      i32.load offset=16
      call $~lib/rt/pure/__visit
      br $__inlined_func$~lib/rt/__visit_members
     end
     local.get $0
     i32.load offset=16
     call $~lib/rt/pure/__visit
     br $__inlined_func$~lib/rt/__visit_members
    end
    unreachable
   end
   local.get $2
   i32.const -2147483648
   i32.and
   if
    i32.const 0
    i32.const 1152
    i32.const 126
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 1152
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.sub
   local.get $2
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/pure/__visit (param $0 i32)
  local.get $0
  i32.const 1588
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
)
