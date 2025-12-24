import gleam/list

pub fn new_list() -> List(String) {
  []
}

pub fn existing_list() -> List(String) {
  ["Gleam", "Go", "TypeScript"]
}

pub fn add_language(languages: List(String), language: String) -> List(String) {
  [language, ..languages]
}

pub fn count_languages(languages: List(String)) -> Int {
  list.length(languages)
}

pub fn reverse_list(languages: List(String)) -> List(String) {
  list.reverse(languages)
}

pub fn exciting_list(languages: List(String)) -> Bool {
    case languages {
["Gleam", ..] -> True
    // Matches if "Gleam" is the second element and the list has exactly 2 or 3 items
    // (As per common Exercism requirements for this task)
    [_, "Gleam"] -> True
    [_, "Gleam", _] -> True
    _ -> False
  }
}
