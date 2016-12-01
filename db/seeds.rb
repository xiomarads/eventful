# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
t.string   "title"
t.text     "description"
t.string   "category"
t.string   "type"
t.decimal  "latitude"
t.decimal  "longitude"
t.string   "location"
t.string   "city"
t.integer  "user_id"
t.datetime "created_at",  null: false
t.datetime "updated_at",  null: false
t.decimal  "price"


Event.create!(title: "Clara Grun Concert", description: "Join Clara Grun and Perrozompopo for a delightful concert night, guitar, piano, saxophone.  All cover money raised will be destined to scholarships for UPNicaragua girls", category: "Music", type:"Concert", )
