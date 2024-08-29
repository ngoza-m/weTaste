# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

puts "Creating restaurants..."

Restaurant.create!({
    name: "3 Trees Cafe",
    location: "Zieseniskade 26, 1017 RW Amsterdam, Netherlands",
    url: "https://www.wagyukanata.com/amsterdam",
    photos: "https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Netherlands/Amsterdam/amsterdam-VanOost-Restaurant-85.jpg"
})

Restaurant.create!({
    name: "The Pantry",
    location: "Leidsekruisstraat 21, 1017 RE Amsterdam, Netherlands",
    url: "https://www.thepantry.nl/en/",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/19/9f/2c/restaurant-1eklas.jpg?w=600&h=-1&s=1"
})

puts "Created #{Restaurant.count} restaurants."