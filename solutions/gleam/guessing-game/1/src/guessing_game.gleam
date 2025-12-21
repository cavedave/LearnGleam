pub fn reply(guess: Int) -> String {
  case guess {
    42 -> "Correct"
    41 | 43 -> "So close"
    i if i <= 40 -> "Too low"
    i if i >= 44 -> "Too high"
    _ -> "Positive number"
  }
}
