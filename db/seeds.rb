# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
require "down"

50.times do
  property = Property.create!(name: Faker::Address.street_name)
  5.times do
    downloaded_image = Down.download((Faker::LoremFlickr.image(size: "515x270", search_terms: ["house"])))
    property.images.attach(io: downloaded_image, filename: "house.jpg")
  end
end
