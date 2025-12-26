import gleam/list
// TODO: please define the Pizza custom type
pub type Pizza {
Margherita
Caprese
Formaggio
ExtraSauce(Pizza)
ExtraToppings(Pizza)
}




pub fn pizza_price(pizza: Pizza) -> Int {
  case pizza {
      Margherita-> 7
      Caprese-> 9
      Formaggio-> 10
    ExtraSauce(innerpizza)-> 1+pizza_price(innerpizza)
    ExtraToppings(innerpizza)-> 2+pizza_price(innerpizza)
  }
}



pub fn order_price(order: List(Pizza)) -> Int {
  let pizza_total = list.fold(order, 0, fn(acc, pizza) { 
    acc + pizza_price(pizza) 
  })

  let fee = case list.length(order) {
    1 -> 3
    2 -> 2
    _ -> 0
  }

  pizza_total + fee
}
