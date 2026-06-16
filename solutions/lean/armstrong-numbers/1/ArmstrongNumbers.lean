namespace ArmstrongNumbers

def charToDigit (c : Char) : Nat :=
  c.toNat - '0'.toNat
  
def digits (n : Nat) : List Nat :=
  (toString n).toList.map charToDigit

  
def isArmstrongNumber (number : Nat) : Bool :=
  let ds := digits number
  let power := ds.length
  let total := (ds.map fun d => d ^ power).sum
  total == number
end ArmstrongNumbers
