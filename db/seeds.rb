# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

r1 = Restaurant.create(name: 'Mcdonalds', address: 'Cornwall Street', phone_number: '01234567890', category: 'italian')
r2 = Restaurant.create(name: 'lemeioux', address: 'Cornwall Street', phone_number: '01234567890', category: 'french')
r3 = Restaurant.create(name: 'wagamama', address: 'Cornwall Street', phone_number: '01234567890', category: 'japanese')
r4 = Restaurant.create(name: 'creps', address: 'Cornwall Street', phone_number: '01234567890', category: 'belgian')
r5 = Restaurant.create(name: 'hong kong', address: 'Cornwall Street', phone_number: '01234567890', category: 'chinese')
