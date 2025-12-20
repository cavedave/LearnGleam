// Please define the expected_minutes_in_oven function
pub fn expected_minutes_in_oven()-> Int {
  // This is a comment
  40
}
// Please define the remaining_minutes_in_oven function

pub fn remaining_minutes_in_oven(spent: Int) -> Int {
  // This is a comment
  expected_minutes_in_oven() - spent
}

// Please define the preparation_time_in_minutes function
pub fn preparation_time_in_minutes(layers: Int) -> Int {
  // This is a comment
  layers*2
}
// Please define the total_time_in_minutes function
pub fn  total_time_in_minutes(layers: Int,spent: Int) -> Int {
  // This is a comment
  preparation_time_in_minutes(layers)+spent
}
// Please define the alarm function
pub fn alarm() {
  // This is a comment
  "Ding!"
}