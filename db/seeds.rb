# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cryptid.destroy_all
Expedition.destroy_all
Sighting.destroy_all

puts "Assets Destroyed"


40.times {User.create(name: Faker::Books::Dune.character, years_experience: rand(0..30))}
puts "40 Users created"

Cryptid.create(name: "Ozark Howler")
Cryptid.create(name: "Fouke Monster")
Cryptid.create(name: "Almas")
Cryptid.create(name: "Yowie")
Cryptid.create(name: "Yeren")
Cryptid.create(name: "Ebu Gogo")
Cryptid.create(name: "Skunk Ape")
Cryptid.create(name: "Mongolian Death Worm")
Cryptid.create(name: "Yeti")
Cryptid.create(name: "Honey Island Swamp Monster")
Cryptid.create(name: "Barmanou")
Cryptid.create(name: "Monkey-Man of Delhi")
Cryptid.create(name: "Chupacabra")
Cryptid.create(name: "Chuchunya")
Cryptid.create(name: "Lizard Man of Scape Ore Swamp")
Cryptid.create(name: "Mothman")
Cryptid.create(name: "Jersey Devil")
Cryptid.create(name: "Loch Ness Monster")
Cryptid.create(name: "Kraken")
Cryptid.create(name: "Ogopogo")
Cryptid.create(name: "Selma")
Cryptid.create(name: "Tahoe Tessie")
bigfoot = Cryptid.create(name: "Bigfoot")
puts "22 Cryptids Created"

seasons = ["Spring", "Summer", "Fall", "Winter"]
regions = ["Alaska", "Alabama", "Arkansas", "American Samoa", "Arizona", "California", "Colorado", "Connecticut", "District of Columbia", "Delaware", "Florida", "Georgia", "Guam", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts", "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "North Carolina", "North Dakota", "Nebraska", "New Hampshire", "New Jersey", "New Mexico", "Nevada", "New York", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Puerto Rico", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Virgin Islands", "Vermont", "Washington", "Wisconsin", "West Virginia", "Wyoming"] 
60.times {Expedition.create(days: rand(1..15), season: seasons.sample, region: regions.sample, user_id: User.all.sample)}
puts "60 Expeditions Created"

temperament = ["Confident", "Shy", "Independent", "Happy", "Aggressive", "Curious"]
60.times {Sighting.create(
        date: Faker::Date.between(from: '2002-01-23', to: '2020-11-29'), 
        location: Faker::Mountain.name, 
        creature_temperament: temperament.sample, 
        fear_rating: rand(1..10), 
        discription: Faker::Lorem.paragraph, 
        expedition_id: Expedition.all.sample, 
        user: User.all.sample, 
        cryptid_id: Cryptid.all.sample)}


40.times {Sighting.create(
        date: Faker::Date.between(from: '2002-01-23', to: '2020-11-29'), 
        location: Faker::Mountain.name, 
        creature_temperament: temperament.sample, 
        fear_rating: rand(1..10), 
        discription: Faker::Lorem.paragraph, 
        expedition_id: Expedition.all.sample, 
        user: User.all.sample, 
        cryptid_id: bigfoot.id)}

puts "Sightings Created"
