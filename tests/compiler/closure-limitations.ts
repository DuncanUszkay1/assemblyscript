function testLet(): (value: i32) => i32 {
  let $local0 = 0;
  return function inner(value: i32) {
    return $local0;
  };
}
testLet();

function closureWrites(): (value: i32) => i32 {
  var $local0 = 0;
  return function inner(value: i32) {
    $local0 = $local0 + 1;
    return $local0;
  };
}
closureWrites();

ERROR("EOF")
