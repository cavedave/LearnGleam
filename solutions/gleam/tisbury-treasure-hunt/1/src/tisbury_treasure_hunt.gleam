import gleam/list

pub fn place_location_to_treasure_location(
  place_location: #(String, Int),
) -> #(Int, String) {
  //#(place_location.0, place_location.1)
  #(place_location.1, place_location.0)
}

pub fn treasure_location_matches_place_location(
  place_location: #(String, Int),
  treasure_location: #(Int, String),
) -> Bool {
    treasure_location.1 == place_location.0 && treasure_location.0 == place_location.1
}

//take in a list and remove non matching elements
//take length of this list if needed
pub fn count_place_treasures(
  place: #(String, #(String, Int)),
  treasures: List(#(String, #(Int, String))),
) -> Int {
  let even_numbers = list.filter(treasures, fn(t){
    treasure_location_matches_place_location(place.1, t.1)


  })
  list.length(even_numbers)
}



pub fn special_case_swap_possible(
  found_treasure: #(String, #(Int, String)),
  place: #(String, #(String, Int)),
  desired_treasure: #(String, #(Int, String)),
) -> Bool {
  //The Brass Spyglass can be swapped for any other treasure at the Abandoned Lighthouse.
  case found_treasure.0, place.0, desired_treasure.0 {
//&& place.0 == "Abandoned Lighthouse"
  // Rule 1: Brass Spyglass at Abandoned Lighthouse (any desired treasure)
    "Brass Spyglass", "Abandoned Lighthouse", _ -> True
// Rule 2 The Amethyst Octopus can be swapped for the Crystal Crab or the Glass Starfish at the Stormy Breakwater.
  
  "Amethyst Octopus","Stormy Breakwater","Crystal Crab" -> True
"Amethyst Octopus","Stormy Breakwater","Glass Starfish" -> True
//The Vintage Pirate Hat can be swapped for the Model Ship in Large Bottle or the Antique Glass Fishnet Float at the Harbor Managers Office.
  "Vintage Pirate Hat","Harbor Managers Office","Model Ship in Large Bottle" -> True
  "Vintage Pirate Hat","Harbor Managers Office","Antique Glass Fishnet Float" -> True
  _,_,_ -> False
}
}
