namespace Acronym

def abbreviate (phrase : String) : String :=
-- we want the first letter and each letter after a space or a -
  String.ofList (go phrase.toList true)
where
  go : List Char → Bool → List Char
    | [], _ => []
    | c :: rest, takeNext =>
        if c == ' ' || c == '-' || c == '_' then
          go rest true
    else if takeNext then
          c.toUpper :: go rest false
        else
          go rest false      

end Acronym
