namespace TwoFer

def twoFer (name : Option String) : String :=
  match name with 
  | none => "One for you, one for me."
  | some "" => "One for you, one for me."
  | some n => "One for "++n++", one for me."

end TwoFer
