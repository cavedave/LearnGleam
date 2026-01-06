//import gleam/int

pub type Error {
  InvalidSquare
}

pub fn square(square: Int) -> Result(Int, Error) {
  case square {
    square if square < 1 || square > 64 -> Error(InvalidSquare)
    _ -> Ok(calculate_power(square - 1))
  }
}

fn calculate_power(exponent: Int) -> Int {
  case exponent {
    0 -> 1
    _ -> 2 * calculate_power(exponent - 1)
  }
}

pub fn total() -> Int {
  calculate_power(64) - 1
}
