# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "mia", email: "mia@test.com", password: "password", password_confirmation: "password")

Note.create!(name: "Cleaning", body: "-Mop, -Clean Room, -Laundry, -Sweep", user_id: 1)
Note.create!(name: "Groceries", body: "-apples, -bread, -mayo, -tomatos", user_id: 1)
