import gleam/int
import gleam/list
pub fn sum(factors factors: List(Int), limit limit: Int) -> Int {
  factors
  |> list.map(multiples(of: _, under: limit))
  |> list.flatten()
  |> list.unique()
  |> int.sum()
}

fn multiples(of factor: Int, under limit: Int) {
let minit2= limit-1
  case factor {
    0 -> []
_ if factor >= limit -> []
    _ -> {
      list.range(from: 1, to: minit2 / factor)
      |> list.map(fn(x) { x * factor })
    }
  }
}
