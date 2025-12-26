import gleam/string
import gleam/result
  

pub fn first_letter(name: String) -> String {
  name
  |> string.trim()
  //|> string.uppercase()
  |> string.first()
  |> result.unwrap(or: "")
}

pub fn initial(name: String) {
  first_letter(name)
  |> string.uppercase()
  |> string.append(suffix: ".")
}

pub fn initials(full_name: String) -> String {
  case string.split_once(full_name, on: " ") {
    Ok(#(first, last)) -> {
      // We take the two parts and join them with a space
      initial(first) <> " " <> initial(last)
    }
    Error(_) -> ""
  }
}


pub fn pair(full_name1: String, full_name2: String) {
  "
     ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     " <> initials(full_name1) <> "  +  " <> initials(full_name2) <> "     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *
"
}

pub fn pair2(full_name1: String, full_name2: String) {
let a = initials(full_name1)
  let b = initials(full_name2)

"
        ******       ******
      **      **   **      **
    **         ** **         **
   **            *            **
   **                         **
   **     "<>a<>"  +  "<>b<>" **
    **                       **
      **                   **
        **               **
          **           **
            **       **
              **   **
                ***
                 *
"
}
