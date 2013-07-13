# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all

Category.create!(
  food_type: "Greek"
  )

Category.create!(
  food_type: "Italian"
  )

Category.create!(
  food_type: "French"
  )

Category.create!(
  food_type: "Korean"
  )

Restaurant.delete_all

Restaurant.create!(
  address: "111 street",
  menu: "cool menu",
  neighborhood: "shankville",
  num_seats: "100",
  price_range: "$",
  summary: "pretty shit",
  timeslots_available: "12",
  category_id: Category.first.id
  )

Restaurant.create!(
  address: "222 ave",
  menu: "bad menu",
  neighborhood: "scarytown",
  num_seats: "20",
  price_range: "$$",
  summary: "awesome",
  timeslots_available: "6",
  category_id: Category.first.id
  )

Restaurant.create!(
  address: "333 road",
  menu: "marginal menu",
  neighborhood: "malibu",
  num_seats: "70",
  price_range: "$$$",
  summary: "meh",
  timeslots_available: "3",
  category_id: Category.first.id
  )

Restaurant.create!(
  address: "444 close",
  menu: "terrible menu",
  neighborhood: "crackton",
  num_seats: "40",
  price_range: "$$$$",
  summary: "fantastic anyway",
  timeslots_available: "44",
  category_id: Category.first.id
  )


