function testParam($local0: i32, $local1: i32): (value: i32) => i32 {
  return function inner(value: i32) {
    return $local1; // closure
  };
}
testParam(1, 2);

function testVar(): (value: i32) => i32 {
  var $local0 = 0;
  return function inner(value: i32) {
    return $local0; // closure
  };
}
testVar();

function testLet(): (value: i32) => i32 {
  let $local0 = 0;
  return function inner(value: i32) {
    return $local0;
  };
}
testLet();

function passItAround(arg: i32): usize {
  return runClosure(createClosure(arg));
}
passItAround(1);

function runInline(arg: i32, foo: i32, bar: i32): i32 {
  return ((): i32 => { return arg + foo + bar; } )();
}
runInline(1,1,1);

function fallOutOfScope(arg: i32): i32 {
  var releaseMe = createClosure(arg);
  return 10;
}
fallOutOfScope(1);

// Ensure that non-closures do not abort upon returning
export function returnOverBoundary(): () => i32 {
  return function(): i32 { return 6; };
}
returnOverBoundary();

function mutableOutOfScope(): i32 {
  let fn = createMutationClosure(1);
  let y = fn(2);
  return fn(3);
}
assert(mutableOutOfScope() == 6);

function mutableInScope(): i32 {
  let x = 1;
  let fn = (arg: i32): i32 => {
    x = x * arg;
    return x;
  }
  let y = fn(2);
  return fn(3);
}
assert(mutableInScope() == 2 * 3);

function complexMutable(): i32 {
  let fn = complexCreateMutationClosure(1);
  let z = fn(5);
  return fn(7);
}
assert(complexMutable() == 3 * 5 * 7);

// HELPER METHODS

function createClosure(arg: i32): (x3: i32) => i32 {
  var closure = (x3: i32): i32 => { return arg + x3; };
  return closure;
}

function complexCreateClosure(arg: i32): (x3: i32) => i32 {
  var foo = 2;
  var bar = 3;
  var baz = 4;
  var f = (x1: i32): i32 => { return foo + bar - baz; };
  var g = (x2: i32): i32 => { return (bar - baz) + foo; };
  foo = 7;
  bar = 11;
  return g;
}

function runClosure(closureToRun: (x3: i32) => i32): i32 {
  return closureToRun(1);
}

function complexCreateMutationClosure(arg: i32): (x3: i32) => i32 {
  let fn = createMutationClosure(1);
  let x = fn(3);
  return fn;
}

function createMutationClosure(arg: i32): (x3: i32) => i32 {
  return (x3: i32): i32 => {
    arg = arg * x3;
    return arg;
  }
}


// KNOWN BUGS

// causes a memory leak, copyFunction is properly released
//const func = (i: i32): i32 => i;
//let copyFunction: (i: i32) => i32 = func;

// also causes a memory leak
//function nestedExecutionTest(arg: i32): i32 {
  //var x = 7;
  //var f = complexCreateClosure(arg);
  //var g = (fn: (x3: i32) => i32): i32 => {
    //var first = fn(arg);
    //return x;
  //};
  //return g(f);
//}
//nestedExecutionTest(1);

// It seems that just calling fn(2) causing some kind of drop issue
//function mutableOutOfScope(): i32 {
  //let fn = createMutationClosure(1);
  //fn(2);
  //return fn(3);
//}
//assert(mutableOutOfScope() == 6);
