import gleam/set.{type Set}
import gleam/string
import gleam/list
import gleam/result

pub fn new_collection(card: String) -> Set(String) {
  set.from_list([card])
}

pub fn add_card(collection: Set(String), card: String) -> #(Bool, Set(String)) {
  #(set.contains(collection, card),set.insert(collection, card))
}

pub fn trade_card(
  my_card: String,
  their_card: String,
  collection: Set(String),
) -> #(Bool, Set(String)) {
//is it present
let present = set.contains(collection,my_card) && !set.contains(collection,their_card)
//do a swap
let new_collection = 
    collection 
|>set.delete(my_card)
|> set.insert(their_card)

#(present,new_collection)
}

pub fn boring_cards(collections: List(Set(String))) -> List(String) {
  collections
  |> list.reduce(set.intersection) // Try to intersect everything
  |> result.unwrap(set.new())    // If the list was empty, return an empty set
  |> set.to_list()
  |> list.sort(string.compare)
}

pub fn total_cards(collections: List(Set(String))) -> Int {
    collections
  |> list.reduce(set.union) // Try to intersect everything
  |> result.unwrap(set.new())    // If the list was empty, return an empty set
  |> set.size()
}

pub fn shiny_cards(collection: Set(String)) -> Set(String) {
  set.filter(collection, fn(card){string.starts_with(card,"Shiny ")})
}
