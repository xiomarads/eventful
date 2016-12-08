# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Event.create!(title: "Clara Grun Concert", description: "Join Clara Grun and Perrozompopo for a delightful concert night, guitar, piano, saxophone.  All cover money raised will be destined to scholarships for UPNicaragua girls", category: "Community", event_type: "Fundraiser", location: "The Garden Cafe, Granada, Nicaragua", city: "Granada", cost: "By donation", event_link: "www.gardencafegranada.com", price: 0, date: Date.today)

Event.create!(title: "Tuku Concert", description: "All the way from Zim, Tuku, the legend, will share an amazing African beats night", category: "Music & Entertainment", event_type: "Concert", location: "Sam Levy's Village, Harare", city: "Granada", cost: "Paid", price: 40, date: Date.today)

Event.create!(title: "Granada Networking Dinner", description: "Business ownners coming together to welcome three new entrepreneurs joining our community", category: "Business & Networking", event_type: "Special Offer", location: "Hotel Plaza Colon, Granada, Nicaragua", city: "Granada", cost: "Paid", price: 10, date: Date.today + 2 .days)

Event.create!(title: "AcroYoga", description: "Join April Hyatt for an AcroYoga", category: "Sports & Wellness", event_type: "Class", location: "Pure Fitness and Spa, Granada, Nicaragua", city: "Granada", cost: "By donation", price: 0, date: Date.today + 2 .days)

Event.create!(title: "Amor, no me quieras tanto", description: "Theater piece based on Carmela Icabalzeta's novel, welcome two of the 2 most accomplished contemporary Nicaraguan actors", category: "Theater, Film & Arts", event_type: "Fundraiser", location: "Casa de los Tres Mundos, Granada, Nicaragua", city: "Granada", cost: "By donation", price: 0, date: Date.today + 3 .days)


Event.create!(title: "Christmas dinner under the stars", description: "For the first time in Granada 5 of the best restaurants joined forces to bring to you a beautiful dinner space...open-skies, candle-lit, right on the edge of our beautiful lake marina.", category: "Food & Drink", event_type: "Special Offer", location: "Marina Cocibolca, Granada, Nicaragua", city: "Granada", cost: "Paid", price: 50, date: Date.today + 5 .days)
