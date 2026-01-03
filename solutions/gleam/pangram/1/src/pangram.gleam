import gleam/string
import gleam/set

pub fn is_pangram(sentence: String) -> Bool {
let alphabet = ["a", "b", "c","d","e","f","g","h","i","j","k","l", "m", "n", "o",
    "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",]

let sentence_chars =
    sentence
    |> string.lowercase()
    |> string.to_graphemes()
    // We don't even need to turn the sentence into a set! 
    // set.drop accepts a List as the second argument.

  alphabet
  |> set.from_list()
  |> set.drop(sentence_chars)
  |> set.is_empty()
}
