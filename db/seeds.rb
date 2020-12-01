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


20.times {User.create(name: Faker::Books::Dune.unique.character, years_experience: rand(0..30), password_digest: "asdkjnwd2129821")}
puts "20 Users created"

Cryptid.create(name: "Ozark Howler", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Fouke Monster", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Almas", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Yowie", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Yeren", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Ebu Gogo", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Skunk Ape", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Mongolian Death Worm", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Yeti", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Honey Island Swamp Monster", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Barmanou", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Monkey-Man of Delhi", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Chupacabra", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Chuchunya", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Lizard Man of Scape Ore Swamp", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Mothman", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Jersey Devil", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Loch Ness Monster", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Kraken", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Ogopogo", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Selma", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Tahoe Tessie", description: Faker::Lorem.paragraph)
bigfoot = Cryptid.create(name: "Bigfoot", description: Faker::Lorem.paragraph)
puts "22 Cryptids Created"

seasons = ["Spring", "Summer", "Fall", "Winter"]
regions = ["Alaska", "Alabama", "Arkansas", "American Samoa", "Arizona", "California", "Colorado", "Connecticut", "District of Columbia", "Delaware", "Florida", "Georgia", "Guam", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts", "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "North Carolina", "North Dakota", "Nebraska", "New Hampshire", "New Jersey", "New Mexico", "Nevada", "New York", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Puerto Rico", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Virgin Islands", "Vermont", "Washington", "Wisconsin", "West Virginia", "Wyoming"] 
60.times {Expedition.create(days: rand(1..15), season: seasons.sample, region: regions.sample, user_id: User.all.sample.id)}
puts "60 Expeditions Created"

temperament = ["Confident", "Shy", "Independent", "Happy", "Aggressive", "Curious"]
60.times {Sighting.create(
        date: Faker::Date.between(from: '2002-01-23', to: '2020-11-29'), 
        location: Faker::Mountain.name, 
        creature_temperament: temperament.sample, 
        fear_rating: rand(1..10), 
        description: Faker::Lorem.paragraph, 
        expedition_id: Expedition.all.sample.id, 
        user_id: User.all.sample.id, 
        cryptid_id: Cryptid.all.sample.id)}


40.times {Sighting.create(
        date: Faker::Date.between(from: '2002-01-23', to: '2020-11-29'), 
        location: Faker::Mountain.name, 
        creature_temperament: temperament.sample, 
        fear_rating: rand(1..10), 
        description: Faker::Lorem.paragraph, 
        expedition_id: Expedition.all.sample.id, 
        user_id: User.all.sample.id, 
        cryptid_id: bigfoot.id)}

puts "Sightings Created"
