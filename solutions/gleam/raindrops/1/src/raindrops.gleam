import gleam/int

pub fn convert(number: Int) -> String {
let result = ""
  
  // Check 3
  let result = case number % 3 == 0 {
    True -> result <> "Pling"
    False -> result
  }
  let result = case number % 5 == 0 {
    True -> result <> "Plang"
    False -> result
  }
  let result = case number % 7 == 0 {
    True -> result <> "Plong"
    False -> result
  }
case result {
    "" -> int.to_string(number)
    _ -> result
  }
}
