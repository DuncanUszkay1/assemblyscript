(module
 (type $none_=>_none (func))
 (memory $0 0)
 (table $0 1 funcref)
 (global $~lib/closure/__global_closure (mut i32) (i32.const -1))
 (export "memory" (memory $0))
 (export "theDefault" (func $export-default/theDefault))
 (export "default" (func $export-default/theDefault))
 (func $export-default/theDefault
  nop
 )
)
