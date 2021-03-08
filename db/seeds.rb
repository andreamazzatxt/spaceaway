# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Spaceship.create!(
  name: "Battlestar Galactica",
  capacity: rand(0..50),
  speciality: "faster-than-light"
  )
Spaceship.create!(
  name: "Discovery",
  capacity: rand(0..50),
  speciality: "avoids enemy attacks"
  )
Spaceship.create!(
  name: "Eagle Transporter",
  capacity: rand(0..50),
  speciality: "nice interior design"
  )
Spaceship.create!(
  name: "USS Sulaco",
  capacity: rrand(0..50),
  speciality: "relax pur with own space garden"
  )
Spaceship.create!(
  name: "The Millennium Falcon",
  capacity: rand(0..50),
  speciality: "a lot of entertainment on board"
  )
