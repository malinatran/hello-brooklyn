# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Neighborhood.create({
  name: "Flatbush",
  nickname: "Caribbean HQ",
  borough: "Brooklyn",
  description: "Founded in 1651 by Dutch colonists, Flatbush consists of several subsections.",
  population: "110,875"
})

Neighborhood.create({
  name: "Bedford-Stuyvesant",
  nickname: "Mos Def's Hood",
  borough: "Brooklyn",
  description: "A historical cultural center for African Americans in Brooklyn, this neighborhood is characterized by its brownstones and central location.",
  population: "153,000"
})