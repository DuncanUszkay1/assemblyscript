function add(x: i32, y: i32): i32 { 
  return x + y 
}
function apply_to_pair(x: i32, y: i32, fn: (x:i32, y:i32) => i32): i32 { 
  return fn(x,y);
}

let result = apply_to_pair(1, 2, add);

assert(result == 3);
