puts 'Start seeding .... 😬'
User.destroy_all
5.times do
  User.create!(
      email: Faker::Internet.email,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      password: Faker::Alphanumeric.alphanumeric(number: 10),
      username: "#{Faker::Movies::StarWars.vehicle}#{rand(0..1000)}",
      date_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
      is_captain: false
    )
end
10.times do
  User.create!(
      email: Faker::Internet.email,
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      password: Faker::Alphanumeric.alphanumeric(number: 10),
      username: "#{Faker::Movies::StarWars.vehicle}#{rand(0..1000)}",
      date_birth: Faker::Date.birthday(min_age: 18, max_age: 65),
      is_captain: true
    )
end

#test user

  User.create!(
      email: 'spaceaway@gmail.com',
      first_name: 'Space',
      last_name: 'Away',
      password: 'spaceawaypass',
      username: 'spicyspace',
      date_birth: '12/11/21',
      is_captain: true
    )

# saturn = Planet.create!(name:'Saturn', coordinates:"12,23.34", description:'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine times that of Earth.')
# mercury = Planet.create!(name:'Mercury', coordinates:"12,45.34", description:'Mercury is the smallest and closest planet to the sun in the Solar System. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the planets in the Solar System. ')
# venus = Planet.create!(name:'Venus', coordinates:"12,99.39", description:'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine times that of Earth.')
# mars = Planet.create!(name:'Mars', coordinates:"12,09.04", description:'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the brightest natural object in Earths night sky after the Moon, Venus can cast shadows and can be, on rare occasion, visible to the naked eye in broad daylight.')

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
  capacity: rand(0..50),
  speciality: "relax pur with own space garden"
  )
Spaceship.create!(
  name: "The Millennium Falcon",
  capacity: rand(0..50),
  speciality: "a lot of entertainment on board"
  )

saturn = Planet.create!(name:'Saturn', coordinates:"12,23.34", description:'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine times that of Earth.')
mercury = Planet.create!(name:'Mercury', coordinates:"12,45.34", description:'Mercury is the smallest and closest planet to the sun in the Solar System. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the planets in the Solar System. ')
venus = Planet.create!(name:'Venus', coordinates:"12,99.39", description:'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine times that of Earth.')
mars = Planet.create!(name:'Mars', coordinates:"12,09.04", description:'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the brightest natural object in Earths night sky after the Moon, Venus can cast shadows and can be, on rare occasion, visible to the naked eye in broad daylight.')

#trip seeds

go_to_mars = Trip.create!(
  name: "Mars Trip",
  spaceship_id: 1,
   planet_id: 4,
    price: 4.300000 ,
     departure_date: '12/02/2021',
      arrival_date: '12/03/2021'
       )

go_to_venus = Trip.create!(
  name: "Venus Trip",
  spaceship_id: 2,
   planet_id: 3,
    price: 12.300000 ,
     departure_date: '17/02/2023',
      arrival_date: '12/03/2023'
       )


puts 'Seed comlpeted! 🌱'

