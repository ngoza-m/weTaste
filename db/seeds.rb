# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Restaurant.create([
  {
    name: "Franggo De Pijp",
    location: "Eerste Sweelinckstraat 9h",
    url: "https://www.franggo.nl"
  },
  {
    name: "Dignita Vondelpark",
    location: "Koninginneweg 218",
    url: "https://eatwelldogood.nl"
  },
  {
    name: "Vinkeles",
    location: "Keizersgracht 384",
    url: "https://www.vinkeles.com"
  },
  {
    name: "Ciel Bleu Restaurant",
    location: "Ferdinand Bolstraat 333",
    url: "https://www.cielbleu.nl"
  },
  {
    name: "Dimitri's Restaurant",
    location: "Insulindeweg 1",
    url: "https://www.dimitris.amsterdam/"
  },

  {
    name: "Yam yam trattoria-pizzeria",
    location: "Frederik Hendrikstraat 90",
    url: "https://www.yam-yam-trattoria-pizzeria.nl/"
  },

  {
    name: "Mana Mana West",
    location: "Frederik Hendrikplantsoen 36",
    url: "https://mana-mana.nl"

  },

  {
    name: "Mondi Amsterdam New West",
    location: "Aletta Jacobslaan 7",
    url: "https://www.mondirestaurant.com/"
  },
  {
    name: "Bar Bouche",
    location: "Wibautstraat 107h",
    url: "https://www.barbouche.nl/"
  },
  {
    name: "Poppy's Amsterdam",
    location: "Lutmastraat 99",
    url: "https://www.poppysamsterdam.nl/"
  },
  {
    name: "Bar Kartel",
    location: "Overtoom 28",
    url: "https://bar-kartel.nl/"
  },
  {
    name: "Lavash",
    location: "Korte Leidsedwarsstraat 119",
    url: "https://restaurantlavash.nl"
  },
  {
    name: "Silom Thai Brasserie",
    location: "Voetboogstraat 13,",
    website: "https://silomthaibrasserie.nl/"
  },
  {
    name: "Tasca Bellota",
    location: "Bickerswerf 2, 1013 KX Amsterdam",
    url: "https://tascabellota.nl/"
  },
  {
    name: "Señor Mostachio",
    location: "Ruysdaelkade 183",
    url: "https://www.senor-mostachio-amsterdam.nl/"
  }

  ])
=======

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

