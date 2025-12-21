import gleam/string



pub fn message(log_line: String) -> String {
  //message("[ERROR]: Invalid operation")
// -> "Invalid operation"
let clean = string.trim(log_line)
//let clean = string.replace("\t", "",clean)
 let msg = case clean {
    "[ERROR]: " <> rest -> rest
    "[INFO]: " <> rest -> rest
    "[WARNING]: "<> rest -> rest
    _ -> log_line
  }
string.trim(msg)
}

pub fn log_level(log_line: String) -> String {
  case log_line {
    "[ERROR]" <> _ -> "error"
    "[INFO]" <> _ -> "info"
    "[WARNING]" <> _ -> "warning"
    _ -> "unknown"
  }
}

pub fn reformat(log_line: String) -> String {
 // ("[INFO]: Operation completed")
// -> "Operation completed (info)"
//    let cleaned = string.trim(log_line)
message(log_line) <> " (" <> log_level(log_line) <> ")"
}
