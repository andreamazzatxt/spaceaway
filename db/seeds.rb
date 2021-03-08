
User.destroy_all
10.times do
  User.create!(
      email: Faker::Internet.email,
      first_name:
    )
end

saturn = Planet.create!(name:'Saturn', coordinates:"12,23.34", description:'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine times that of Earth.')
mercury = Planet.create!(name:'Mercury', coordinates:"12,45.34", description:'Mercury is the smallest and closest planet to the sun in the Solar System. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the planets in the Solar System. ')
venus = Planet.create!(name:'Venus', coordinates:"12,99.39", description:'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine times that of Earth.')
mars = Planet.create!(name:'Mars', coordinates:"12,09.04", description:'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the brightest natural object in Earths night sky after the Moon, Venus can cast shadows and can be, on rare occasion, visible to the naked eye in broad daylight.')
