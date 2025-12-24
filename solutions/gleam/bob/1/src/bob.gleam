import gleam/string

pub fn is_shouting(input: String) -> Bool {
  // 1. It must be the same as its uppercase version
  // 2. It must NOT be the same as its lowercase version (ensures there are letters)
  string.uppercase(input) == input && string.lowercase(input) != input
}

pub fn is_question(input: String) -> Bool {
  input
  |> string.trim
  |> string.ends_with("?")
}

pub fn hey(remark: String) -> String {
  let trimmed = string.trim(remark)
  
  // Pre-calculate the boolean values here
  let shouting = is_shouting(trimmed)
  let question = is_question(trimmed)

  case trimmed {
    // 1. Check for empty string
    "" -> "Fine. Be that way!"

    // 2. Use the variables in the guards
    _ if shouting && question -> "Calm down, I know what I'm doing!"
    _ if shouting -> "Whoa, chill out!"
    _ if question -> "Sure."

    // 3. Default
    _ -> "Whatever."
  }
}
