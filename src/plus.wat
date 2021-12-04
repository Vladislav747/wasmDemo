 (func $example (param $0 i32) (result i32)
  get_local $0
  i32.const 2
  i32.eq
  if
   get_local $0
   i32.const 2
   i32.mul
   return
  end
  get_local $0
  i32.const 3
  i32.eq
  if
   get_local $0
   i32.const 3
   i32.mul
   return
  end
  get_local $0
  get_local $0
  i32.mul
 )