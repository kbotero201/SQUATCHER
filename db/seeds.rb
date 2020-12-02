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
Cryptid.create(name: "Mongolian Death Worm", description: "The Mongolian Death Worm's native name, Olgoi-Khorkhoi, means ‘intestine worm’, due to its red blood-like color, and size, which is the size of an intestine. It has been described by many to be from 2-7ft long, have the ability to spit out a corrosive yellow saliva and to generate blasts of electricity. However this latter power is thought of as being folkloric by the nomads of the Gobi. Western culture has come to call this monster the ‘Mongolian Death Worm.’")
Cryptid.create(name: "Yeti", description: "In Buddhist mythology, the Yetis were peaceful creatures, that were very shy, and lived in dense snow caves on the glaciers which form the Ganges River in India. In modern times, most sightings and evidence are on K2. The name Yeti derives from ‘Yeh-Tah’, meaning ‘rock thing’. The Yeti was even mentioned in pre-Buddhist cultures, such as the Lecha people, who worshiped a ‘Glacier Giant.’ Tibetan and Nepalese monasteries have collected several skulls and bones of the yetis, some which preside in the Smithsonian Museum today. Although one of their specimens was proven to be a human bone, others contained the museum are still in question.")
Cryptid.create(name: "Honey Island Swamp Monster", description: "The Honey Island Swamp Monster is a humanoid cryptid that is reported to have been seen in and around Honey Island Swamp, Louisiana since 1963. It was first reported in 1963, when two hunters spotted this creature prowling the swamps. Its tracks indicate three-toed webbed feet. It is possible that a Bigfoot evolved webbed feet to better suit its swamp environment. Some even believe it's an experiment gone awry.")
Cryptid.create(name: "Barmanou", description: "The Barmanou is the Pakistani equivalent of the Bigfoot. The term Barmanou is used in several Pakistani languages including Khowar, Shina, Hindko and Kashmiri. In addition to the name Barmanou, there are other local names as well.")
Cryptid.create(name: "Monkey-Man of Delhi", description: "The Monkey Man of New Delhi was an ape like creature that terrorized the capital city of New Delhi, India in 2001. In May of that year, stories began to circulate in New Delhi of a strange, nocturnal, monkey-like creature that was attacking people. Eyewitness accounts were often inconsistent, but tended to describe the creature as about four feet tall, covered in thick black hair. It supposedly wore a metal helmet, had metal claws, pants, glowing red eyes, sometimes beneath goggles, and three buttons on its chest. Some suggest the Monkey Man is an avatar of the Hindu deity Hanuman, while others claim it is a version of Bigfoot.")
Cryptid.create(name: "Chupacabra", description: "El Chupacabra is a cryptid that is renowned for its attacks on livestock, hence the Spanish name ‘the goatsucker.’ It supposedly eats chickens, goats, and other farm animals and pets. It has been reported all over the Americas, specifically the Southwestern United States, Mexico and Puerto Rico. There are two common versions of the chupacabra. There is a reptilian kind - the true chupacabra - and a canid kind, which are also called blue dogs. There have been more than 2,000 sightings of both types.  When it sucks blood, it allegedly makes an odd noise.")
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
