require "open-uri"
puts 'Start seeding .... 😬'

Booking.destroy_all
Trip.destroy_all
User.destroy_all
Spaceship.destroy_all
Planet.destroy_all

#Captains Profiles
anakin =   User.new(
      email: 'anakin@gmail.com',
      first_name: 'Anakin',
      last_name: 'Skywalker',
      password: 'password',
      username: 'Ani-Skywalker19',
      date_birth: '21/11/89',
      experience: 4,
      personality:'Super stubborn and will never admit when he’s wrong',
      is_captain: true
    )
anakin.photo.attach(
            io: URI.open('http://www.swx.it/databank/images/0/0f/Anakinskywalker.jpg'),
            filename: 'anakin.jpg',
            content_type: 'image/jpg')
anakin.save!

leila =   User.new(
      email: 'leila@gmail.com',
      first_name: 'Leia',
      last_name: 'Skywalker',
      password: 'password',
      username: 'Princess-Leila12',
      date_birth: '1/5/87',
      experience: 5,
      personality:'Charismatic and can convince anyone to do their bidding',
      is_captain: true
    )
leila.photo.attach(
            io: URI.open("https://images2.minutemediacdn.com/image/fetch/w_2000,h_2000,c_fit/https%3A%2F%2Fwinteriscoming.net%2Ffiles%2F2019%2F07%2Fleia-crop.jpeg"),
            filename: 'leila.jpg',
            content_type: 'image/jpg')
leila.save!

obiwan =   User.new(
      email: 'obione@gmail.com',
      first_name: 'Obi-Wan',
      last_name: 'Kenobi',
      password: 'password',
      username: 'Obi-Obi-1',
      date_birth: '10/9/62',
      experience: 4,
      personality:'You can kill me, but you will never destroy me. It takes strength to resist the dark side. Only the weak embrace it.',
      is_captain: true
    )
obiwan.photo.attach(
            io: URI.open('https://leganerd.com/wp-content/uploads/2019/12/ewan-mcgregor-obi-wan.jpg'),
            filename: 'kenobi.jpg',
            content_type: 'image/jpg')
obiwan.save!


sidius =   User.new(
      email: 'sidius@gmail.com',
      first_name: 'Darth',
      last_name: 'Sidius',
      password: 'password',
      username: 'Sidius-1',
      date_birth: '10/9/32',
      experience: 4,
      personality:'There is only one plan—one great design which shall govern the universe—mine.',
      is_captain: true
    )
sidius.photo.attach(
            io: URI.open('https://upload.wikimedia.org/wikipedia/en/8/8f/Emperor_RotJ.png'),
            filename: 'sidius.png',
            content_type: 'image/png')
sidius.save!

picard =   User.new(
      email: 'picard@gmail.com',
      first_name: 'Jean-Luc',
      last_name: 'Picard',
      password: 'password',
      username: 'Picky-32',
      date_birth: '10/9/30',
      experience: 3,
      personality:'The line must be drawn here! This far, no further!',
      is_captain: true
    )
picard.photo.attach(
            io: URI.open('https://www.ilcineocchio.it/cine/wp-content/uploads/2017/12/star-trek-patrick-stewart.jpg'),
            filename: 'picard.jpg',
            content_type: 'image/jpg')
picard.save!

spock =   User.new(
      email: 'spock@gmail.com',
      first_name: 'Spock',
      last_name: 'Sarek',
      password: 'password',
      username: 'Spocky87',
      date_birth: '2/3/87',
      experience: 5,
      personality:'The line must be drawn here! This far, no further!',
      is_captain: true
    )
spock.photo.attach(
            io: URI.open('https://st.ilfattoquotidiano.it/wp-content/uploads/2015/02/spok-et-les-cohanim.jpg'),
            filename: 'spock.jpg',
            content_type: 'image/jpg')
spock.save!

jabba =   User.new(
      email: 'jabba@gmail.com',
      first_name: 'Jabba',
      last_name: 'The Hutt',
      password: 'password',
      username: 'HuttyHot87',
      date_birth: '1/2/45',
      experience: 2,
      personality:'I will not give up my favorite decoration. I like Captain Solo where he is.',
      is_captain: true
    )
jabba.photo.attach(
            io: URI.open('https://upload.wikimedia.org/wikipedia/en/5/53/Jabba_the_Hutt_in_Return_of_the_Jedi_%281983%29.png'),
            filename: 'jabba.png',
            content_type: 'image/png')
jabba.save!

#Pirates profile
chewbekka =   User.new(
      email: 'chewbekka@gmail.com',
      first_name: 'Chewbekka',
      last_name: 'The Great',
      password: 'password',
      username: 'Chewbie_love',
      date_birth: '1/02/21',
      is_captain: false
    )
chewbekka.photo.attach(
            io: URI.open('https://static.wikia.nocookie.net/starwars/images/4/48/Chewbacca_TLJ.png/revision/latest/top-crop/width/360/height/360?cb=20210106001220'),
            filename: 'chewbekka.png',
            content_type: 'image/png')
chewbekka.save!


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


# SPACESHIPS
battlestar = Spaceship.new(
  name: "Battlestar Galactica",
  capacity: rand(10..50),
  speciality: "faster-than-light"
  )
battlestar.photo.attach(
            io: URI.open('https://www.denofgeek.com/wp-content/uploads/2019/09/battlestar-galactica-reboot-1.jpeg?resize=768%2C432'),
            filename: 'battlestar.jpeg',
            content_type: 'image/jpeg')
battlestar.save!

discovery =Spaceship.new(
  name: "U.S.S. Discovery",
  capacity: rand(10..50),
  speciality: "avoids enemy attacks"
  )
discovery.photo.attach(
            io: URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLbLl1juEdWM-ffXY0SpVhZ2pPtX_6VdTkGQ&usqp=CAU'),
            filename: 'discovery.jpeg',
            content_type: 'image/jpeg')
discovery.save!

transporter = Spaceship.new(
  name: "Eagle Transporter",
  capacity: rand(10..50),
  speciality: "nice interior design"
  )
transporter.photo.attach(
            io: URI.open('https://fsb.zobj.net/crop.php?r=x1_gw3mwYaHLK-abs9sfPuVNHQFRTDlliXAixArSRBYX4h9mbV8ioiEyFj1H9hg4Pb4eFsRKN1pVUn893AbQUtSbQkVlXyU6-IiDSL2t5Muj1uUjMsOVsdqvX5hUXB_qo0bphh0wHhI9rAhV'),
            filename: 'eagle_transporter.jpeg',
            content_type: 'image/jpeg')
transporter.save!

sulaco = Spaceship.new(
  name: "USS Sulaco",
  capacity: rand(10..50),
  speciality: "relax pur with own space garden"
  )
sulaco.photo.attach(
            io: URI.open('https://i.ytimg.com/vi/74muAbxYsvo/maxresdefault.jpg'),
            filename: 'sulaco.jpeg',
            content_type: 'image/jpeg')
sulaco.save!

falcon = Spaceship.new(
  name: "The Millennium Falcon",
  capacity: rand(0..50),
  speciality: "a lot of entertainment on board"
  )
falcon.photo.attach(
            io: URI.open('https://image.winudf.com/v2/image/Y29tLnN0YXIuZmFsY29uX3NjcmVlbl83XzE1MDY5MDk5NDlfMDE3/screen-7.jpg?fakeurl=1&type=.jpg'),
            filename: 'falcon.jpeg',
            content_type: 'image/jpeg')
falcon.save!

majesty = Spaceship.new(
  name: "Her Majesty's",
  capacity: rand(10..50),
  speciality: " Instead of interrupting, work on attracting: a spaceship trip which will leave an impression!"
  )
majesty.photo.attach(
            io: URI.open('https://st2.depositphotos.com/4556043/7198/i/600/depositphotos_71983955-stock-photo-space-ship.jpg'),
            filename: 'majesty.jpeg',
            content_type: 'image/jpeg')
majesty.save!

light = Spaceship.new(
  name: "Light Weight Spaceship",
  capacity: rand(10..50),
  speciality: " Master the topic, the message, and the delivery.
Taking a trip of this kind makes you do a real statement in your life."
  )
light.photo.attach(
            io: URI.open('https://robbreport.com/wp-content/uploads/2020/10/Virgin_Galactic_Unveils_Mach_3_Aircraft_Design_for_High_Speed_Travel_Image_2_cmyk-1.jpg'),
            filename: 'light.jpeg',
            content_type: 'image/jpeg')
light.save!

# Planets Seed!!


saturn = Planet.new(
               name:'Saturn',
               coordinates:"12,23.34",
               description:'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine times that of Earth.')
saturn.photo.attach(
            io: URI.open('https://upload.wikimedia.org/wikipedia/commons/c/c7/Saturn_during_Equinox.jpg'),
            filename: 'mercury.jpg',
            content_type: 'image/jpg')
saturn.save!


mercury = Planet.new(
                name:'Mercury',
                coordinates:"12,45.34",
                description:'Mercury is the smallest and closest planet to the sun in the Solar System. Its orbit around the Sun takes 87.97 Earth days, the shortest of all the planets in the Solar System. ')
mercury.photo.attach(
            io: URI.open('https://cdn.mos.cms.futurecdn.net/MTEiJvP99DScN3vkAsE9LA.jpg'),
            filename: 'mercury.jpg',
            content_type: 'image/jpg')
mercury.save!

venus = Planet.new(
              name:'Venus',
              coordinates:"12,99.39",
              description:'Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the brightest natural object in Earths night sky after the Moon, Venus can cast shadows and can be, on rare occasion, visible to the naked eye in broad daylight.')
venus.photo.attach(
            io: URI.open('https://upload.wikimedia.org/wikipedia/commons/a/a9/PIA23791-Venus-NewlyProcessedView-20200608.jpg'),
            filename: 'venus.jpg',
            content_type: 'image/jpg')
venus.save!

moon = Planet.new(
              name:'Moon',
              coordinates:"12,44.55",
              description:'The Moon is Earth’s largest natural satellite. We usually see it in the night sky. Some other planets also have moons or natural satellites.')
moon.photo.attach(
            io: URI.open('https://upload.wikimedia.org/wikipedia/commons/e/e1/FullMoon2010.jpg'),
            filename: 'moon.jpg',
            content_type: 'image/jpg')
moon.save!

pandora = Planet.new(
              name:'Pandora',
              coordinates:"99,33.55",
              description:'Due to Pandora’s lower gravity, most creatures on Pandora are hexapods (six-legged), although the Na’vi resemble humans and have only two legs.')
pandora.photo.attach(
            io: URI.open('https://allears.net/wp-content/uploads/2020/01/ENp7lbGUYAEeIvv.jpg'),
            filename: 'pandora.jpg',
            content_type: 'image/jpg')
pandora.save!

sun = Planet.new(
              name:'Sun',
              coordinates:"44,55.11",
              description:'The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, heated to incandescence by nuclear fusion reactions in its core, radiating the energy mainly as visible light and infrared radiation.')
sun.photo.attach(
            io: URI.open('https://www.deccanherald.com/sites/dh/files/articleimages/2020/07/13/sun%20istock-1594647126.jpg'),
            filename: 'sun.jpg',
            content_type: 'image/jpg')
sun.save!

mars = Planet.new(
             name:'Mars',
             coordinates:"12,09.04",
             description:'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury. In English, Mars carries the name of the Roman god of war and is often referred to as the "Red Planet".')
mars.photo.attach(
            io: URI.open('https://upload.wikimedia.org/wikipedia/commons/0/02/OSIRIS_Mars_true_color.jpg'),
            filename: 'mars.jpg',
            content_type: 'image/jpg')
mars.save!

tatoonie = Planet.new(
             name:'Tatoonie',
             coordinates:"15,09.04",
             description:"Desert planet and childhood home of Anakin Skywalker and Luke Skywalker. Location of Jabba the Hutt's palace.")
tatoonie.photo.attach(
            io: URI.open('https://static.wikia.nocookie.net/starwars/images/b/b0/Tatooine_TPM.png/revision/latest?cb=20131019121937'),
            filename: 'tatoonie.png',
            content_type: 'image/png')
tatoonie.save!


mandalore = Planet.new(
             name:'Mandalore',
             coordinates:"13,19.02",
             description:"Outer Rim planet that is the homeworld of the Mandalorians torn by wars between Mandalorians and Jedi and eventually purged by the Empire scattering the few Mandalorians throughout the galaxy (including Bo-Katan).")
mandalore.photo.attach(
            io: URI.open('https://static.wikia.nocookie.net/starwars/images/5/5e/Mandalore_SWCT.png/revision/latest?cb=20181015023000'),
            filename: 'mandalore.png',
            content_type: 'image/png')
mandalore.save!

exegol = Planet.new(
             name:'Exegol',
             coordinates:"13,19.02",
             description:"A stormy planet in the galaxy's 'Unknown Regions'. An ancient bastion of the Sith, it serves as the lair of Darth Sidious and the Sith Eternal during the construction of his armada known as the Final Order.")
exegol.photo.attach(
            io: URI.open('https://static.wikia.nocookie.net/starwars/images/9/9c/Exegol-TROS-VD.png/revision/latest?cb=20191225065904'),
            filename: 'exegol.png',
            content_type: 'image/png')
exegol.save!

alderan = Planet.new(
             name:'Alderan',
             coordinates:"20,19.02",
             description:"Forests, mountains; home planet of Princess Leia and the House of Organa. Destroyed by the first Death Star as punishment for involvement in the Rebel Alliance and also as a demonstration of power.")
alderan.photo.attach(
            io: URI.open('https://upload.wikimedia.org/wikipedia/en/6/60/Alderaan250ppx.PNG'),
            filename: 'alderan.png',
            content_type: 'image/png')
alderan.save!


#trip seeds

go_to_mars = Trip.new(
                  name: "Awesome Trip to Mars",
                  spaceship: discovery,
                  captain: picard,
                  planet: mars,
                  price: 42000,
                  description: 'Come visit our beautiful red planet! You are going to be amazed! Also you can visit the landing spot of the Perseverance rover',
                  departure_date: '12/09/2021',
                  arrival_date: '12/03/2025')
go_to_mars.photo.attach(
            io: URI.open('https://images.pexels.com/photos/3274899/pexels-photo-3274899.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            filename: 'marstrip.jpeg',
            content_type: 'image/jpeg')
go_to_mars.save!

go_to_venus = Trip.new(
                  name: "Superfast trip to Venus",
                  spaceship: light,
                  captain: spock,
                  planet: venus,
                  price: 42000,
                  description: 'Venus is waiting for you!! Our hot planet is going to keep you warm!',
                  departure_date: '12/12/2021',
                  arrival_date: '12/03/2022')
go_to_venus.photo.attach(
            io: URI.open('https://images.pexels.com/photos/2440079/pexels-photo-2440079.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
            filename: 'venustrip.jpg',
            content_type: 'image/jpg')
go_to_venus.save!



go_to_alderan = Trip.new(
                  name: "Visit Leila House",
                  spaceship: falcon,
                  captain: leila,
                  planet: alderan,
                  price: 42000,
                  description: 'Come and visit the new Alderan, we build it againg from scratch just for you. We have also a DeathStar shield ... just for your safety!',
                  departure_date: '12/12/2022',
                  arrival_date: '12/03/230')
go_to_alderan.photo.attach(
            io: URI.open('https://img.youtube.com/vi/EB_q_2eeZbI/maxresdefault.jpg'),
            filename: 'alderantrip.jpg',
            content_type: 'image/jpg')
go_to_alderan.save!

go_to_tatoonie= Trip.new(
                  name: "Visit Tatoonie!",
                  spaceship: sulaco,
                  captain: anakin,
                  planet: tatoonie,
                  price: 80000,
                  description: 'Come and visit the most dry planet in the universe, you will be able to visit the home planet of the Skywalkers',
                  departure_date: '2/2/2022',
                  arrival_date: '12/03/239')
go_to_tatoonie.photo.attach(
            io: URI.open('https://i.pinimg.com/originals/e7/e6/6e/e7e66e9a5d91ee1b10cf2caa5d046590.jpg'),
            filename: 'tatoonietrip.jpg',
            content_type: 'image/jpg')
go_to_tatoonie.save!



go_to_exegol= Trip.new(
                  name: "Visit the planet of the Sith!",
                  spaceship: battlestar,
                  captain: sidius,
                  planet: exegol,
                  price: 123000,
                  description: 'The Dark Lord of the Siths is waiting for you, here on Exegol. He will tich you how to use the dark side of the Force in this fantastic trip!',
                  departure_date: '2/7/2022',
                  arrival_date: '12/03/280')
go_to_exegol.photo.attach(
            io: URI.open('https://www.starwarsaddicted.it/wp-content/uploads/2020/12/Star-Wars-Exegol-Sith-Concept-Art.jpg'),
            filename: 'exegoltrip.png',
            content_type: 'image/png')
go_to_exegol.save!

go_to_mandalore= Trip.new(
                  name: "Visit Mandalore",
                  spaceship: majesty,
                  captain: jabba,
                  planet: mandalore,
                  price: 123000,
                  description: 'Visit the planet of Mando, you will be able to see Grogu going wild!!',
                  departure_date: '2/7/2022',
                  arrival_date: '12/03/280')
go_to_mandalore.photo.attach(
            io: URI.open('https://cdn.mos.cms.futurecdn.net/SRxSp8y2pSBjCRXo5jiWrG.jpg'),
            filename: 'mandaloretrip.jpg',
            content_type: 'image/jpg')
go_to_mandalore.save!

go_to_pandora= Trip.new(
                  name: "Visit Pandora",
                  spaceship: discovery,
                  captain: obiwan,
                  planet: pandora,
                  price: 123000,
                  description: 'Come and visit our beautiful and peaceful planet, you will be able to float in a sea of milk.',
                  departure_date: '2/7/2022',
                  arrival_date: '12/03/280')
go_to_pandora.photo.attach(
            io: URI.open('https://images.pexels.com/photos/544268/pexels-photo-544268.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            filename: 'pandoratrip.jpg',
            content_type: 'image/jpg')
go_to_pandora.save!


puts 'Seed comlpeted! 🌱'

