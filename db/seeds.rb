# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Book.delete_all
Author.delete_all

tom = Author.create!(name: 'Tom Robbins', deceased: false)
stephan = Author.create!(name: 'Stephan King', deceased: false)
roald = Author.create!(name: 'Roald Dahl', deceased: true)

15.times do
  book = Book.new(
    title: Faker::Book.title,
    rating: rand(1..10),
    publishdate: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
    available: [true, false].shuffle
  )
  book.author = [tom, stephan, roald].sample
  book.save!
end
