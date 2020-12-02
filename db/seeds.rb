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


20.times {User.create(name: Faker::Books::Dune.unique.character, years_experience: rand(0..30), password: "sdfibdsaf")}
puts "20 Users created"

Cryptid.create(name: "Ozark Howler", description: "A legendary creature that is purported to live in remote areas in Arkansas, Missouri, Oklahoma, and Texas. It is typically described as being bear sized, with a thick body, stocky legs, black shaggy hair, glowing red eyes, and prominent horns. Its cry is often described as being a combination of a wolf's howl, an elk's bugle, and the laugh of a hyena.")
# Cryptid.create(name: "Fouke Monster", description: Faker::Lorem.paragraph)
Cryptid.create(name: "Almas", description: "An ape-like cryptid reported from Central Asia. They are said to inhabit the Asian mountain regions of Pamir and Caucasus as well as the Mongolian mountain range Altai. Sightings of the Almas date back as early as the 15th century.")
Cryptid.create(name: "Yowie", description: "A fanged humanoid marsupial or great ape, featured in Aboriginal mythology along with Australian Raptors, Bunyips and Burrunjor. The Yowie is considered to be the Australian Bigfoot, and contain many primate like features, possibly indicating that it is an undiscovered species of great ape (Gigantopithecus) or prehistoric human. The Yowie is described as being one of the most aggressive Sasquatch species, and has been reported tearing heads off of kangaroos and dogs. It has been seen attacking humans as well. However, that is rare.")
Cryptid.create(name: "Yeren", description: "A mysterious primate living in the mountains of China, with most of the sightings coming from the remote Hubei province. It has reddish brown hair and a large jaw. It is six to eight feet tall, and is generally friendly but reserved around humans. Many footprints and hair traces have been found. Despite its size, it is said to be less robust and stocky than its other relatives like Sasquatch.")
Cryptid.create(name: "Ebu Gogo", description: "A humanoid creature that appears in Nage Mythology. The Nage people of Flores, Indonesia describe the Ebu Gogo as having been able walkers and fast runners around 1.5m tall. They reportedly had wide and flat noses, broad faces with large mouths and hairy bodies. The females also had 'long, pendulous breasts'. They were said to have murmured in what was assumed to be their own language and could reportedly repeat what was said to them in a parrot-like fashion. The Nage people believe that the Ebu Gogo were alive at the time of the arrival of Portuguese Trading Ship in the 17th century, and some hold that they survived as recently as the 20th century, but are now no longer seen.")
Cryptid.create(name: "Skunk Ape", description: "A bipedal humanoid, possibly a Bigfoot, reported in the South Eastern United States including Texas, Georgia, and Louisiana, but most notably in the Florida Everglades. It has black fur and glowing red eyes, unusual for most primates because most primates lack a tapetum lucidum, a layer of tissue behind the retina that reflects light. The Skunk Ape's most obvious character is its terrible odor, which gives it its name.")
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
