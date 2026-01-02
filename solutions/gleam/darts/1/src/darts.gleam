import gleam/float
import gleam/result

pub fn score(x: Float, y: Float) -> Int {
  //sqrt(x^2 + y^2)
  // 1. Calculate x^2 + y^2
  let sum_of_squares = { x *. x } +. { y *. y }
  
  // 2. Calculate the square root using power of 0.5
  // Note: float.power returns a Result, so we unwrap it.
  //float.power(sum_of_squares, 0.5)
  

let distance = float.power(sum_of_squares, 0.5)
|> result.unwrap(0.0)

case distance {
  d if d >. 10.0 -> 0
  d if d >. 5.0 -> 1
  d if d >. 1.0 -> 5
  _ -> 10 // This covers 0 to 1.0
}

}
