import gleam/order.{type Order}
import gleam/float
import gleam/list

pub type City {
  City(name: String, temperature: Temperature)
}

pub type Temperature {
  Celsius(Float)
  Fahrenheit(Float)
}

pub fn fahrenheit_to_celsius(f: Float) -> Float {
  {f-.32.0}  /.  1.8
}

pub fn compare_temperature(left: Temperature, right: Temperature) -> Order {
  let convert = fn(temp:Temperature) -> Float{
  case temp{
  Fahrenheit(temp)->fahrenheit_to_celsius(temp)
  Celsius(temp)->temp

  }

  }
  float.compare(convert(left), convert(right))
}

pub fn sort_cities_by_temperature(cities: List(City)) -> List(City) {
  list.sort(cities, fn(city1: City, city2:City ){
  compare_temperature(city1.temperature,city2.temperature)

  } )
}
