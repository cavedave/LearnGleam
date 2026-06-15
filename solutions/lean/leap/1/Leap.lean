namespace Leap

def divisibleBy (year : UInt16) (n : UInt16) : Bool :=
  year % n == 0

def leapYear (year : UInt16) : Bool :=
  divisibleBy year 400 ||
    (divisibleBy year 4 && not (divisibleBy year 100))

end Leap
