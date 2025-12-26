import gleam/list
import gleam/int

pub fn today(days: List(Int)) -> Int {
  case days {
  []->0
  [first, ..] -> first
  }
}

pub fn increment_day_count(days: List(Int)) -> List(Int) {
  case days{
   [first, ..rest]->[first+1, ..rest]
  []-> [1]
}
}

pub fn has_day_without_birds(days: List(Int)) -> Bool {
case days {
  []-> False
  [0,..]  -> True
  [_,..rest] -> has_day_without_birds(rest)
}
}

pub fn total(days: List(Int)) -> Int {
    int.sum(days)
}

pub fn busy_days(days: List(Int)) -> Int {
 list.length(list.filter(days, fn(x) { x >= 5 }))
}
