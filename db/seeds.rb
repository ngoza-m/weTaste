# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'

puts "Destroying old restaurants"

Wishlist.destroy_all
Recommendation.destroy_all

# Wisshlist.update_all(restaurant_id: nil)

Restaurant.destroy_all

puts "Creating new restaurants"
restaurants_data = [
  {
    name: "Benji's Oost",
    location: "Wibautstraat 196",
    url: "https://www.benjis.amsterdam",
<<<<<<< HEAD
    photos: "",
=======
    photos: "https://lh3.googleusercontent.com/p/AF1QipMfHY02yGTP153sDaSsO3pBfth48LmBunki_WpH=s1360-w1360-h1020",
>>>>>>> master
    city: "Amsterdam", phone_number: "+31 20 223 8787",
    category: "Breakfast"
  },


   {

   name: "Franggo De Pijp",
    location: "Eerste Sweelinckstraat 9h",
    url: "https://www.franggo.nl",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/19/9f/2c/restaurant-1eklas.jpg?w=600&h=-1&s=1",
    city: "Amsterdam", phone_number: "020 303 1046"
  },

  {
    name: "Dignita Vondelpark",
    location: "Koninginneweg 218",
    url: "https://eatwelldogood.nl",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/a1/5f/05/dignita.jpg?w=2000&h=-1&s=1",
   city: "Amsterdam", phone_number: "020 221 458"
  },
  {
    name: "Vinkeles",
    location: "Keizersgracht 384",
    url: "https://www.vinkeles.com",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/1d/68/23/interior-restaurant-vinkeles.jpg?w=1400&h=-1&s=1",
   city: "Amsterdam", phone_number: "020 530 2010"
  },
  {
    name: "Ciel Bleu Restaurant",
    location: "Ferdinand Bolstraat 333",
    url: "https://www.cielbleu.nl",
    photos: "https://lh3.googleusercontent.com/p/AF1QipM3slhyjQN0j0nLqkbkNfqnO7vG8asWPWOMPY6D=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "020 678 7450"
  },
  {
    name: "Dimitri's Restaurant",
    location: "Insulindeweg 1",
    url: "https://www.dimitris.amsterdam/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipOJwnSK0IYtrmJgM7k3VdIvm5Q96bGCcns3HPwh=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "06 83705890"
  },

  {
    name: "Yam yam trattoria-pizzeria",
    location: "Frederik Hendrikstraat 90",
    url: "https://www.yam-yam-trattoria-pizzeria.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipPFXFn0MQb9UGkDlM45qSTaXrXN2as4Oj-tNmrb=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "020 681 5097"
  },

  {
    name: "Mana Mana West",
    location: "Frederik Hendrikplantsoen 36",
    url: "https://mana-mana.nl",
    photos: "https://lh3.googleusercontent.com/p/AF1QipNAaf3-CxZNsAo1_l6smh7jY6vrJzHX2XeaTbzd=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "020 845 8867"

  },

  {
    name: "Mondi Amsterdam New West",
    location: "Aletta Jacobslaan 7",
    url: "https://www.mondirestaurant.com/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipNAaf3-CxZNsAo1_l6smh7jY6vrJzHX2XeaTbzd=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "020 820 7832"

  },
  {
    name: "Bar Bouche",
    location: "Wibautstraat 107h",
    url: "https://www.barbouche.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipMfCTzvyUzf2Gg2ocVIupiXaZ2mNw5YGw6yq1WT=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "020 280 7040"
  },
  {
    name: "Poppy's Amsterdam",
    location: "Lutmastraat 99",
    url: "https://www.poppysamsterdam.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipO7XhpOOssy3fPKN1glqrLcT8Wg4rbYkFoG38xp=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "020 341 8799"
  },
  {
    name: "Bar Kartel",
    location: "Overtoom 28",
    url: "https://bar-kartel.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipNeeWzxB2IiaP1xU3Tn65WdWQDMxDzDTiPySEmm=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "020 765 7010"
  },
  {
    name: "Lavash",
    location: "Korte Leidsedwarsstraat 119",
    url: "https://restaurantlavash.nl",
    photos: "https://lh3.googleusercontent.com/p/AF1QipNX2IznYm_Dqad8-VtRBGFY5mWJVkqkwQci_7Nj=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "020 771 4344"
  },
  {
    name: "Silom Thai Brasserie",
    location: "Voetboogstraat 13,",
    url: "https://silomthaibrasserie.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipPP129CXSHmVXi-yH9sSjRyPgbWhxQOrgDMCnVF=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "020 244 2894"
  },
  {
    name: "Tasca Bellota",
    location: "Bickerswerf 2, 1013 KX Amsterdam",
    url: "https://tascabellota.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipMVKPqevsOPYmPvfl5NPU12RwGJVViUJUt7qqv_=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "020 320 2951"
  },
  {
    name: "Señor Mostachio",
    location: "Ruysdaelkade 183",
    url: "https://www.senor-mostachio-amsterdam.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipOiPi5LD7sT_-BhNxQ_iCSsXV6B9DECQ-3Tq4XR=s1360-w1360-h1020",
   city: "Amsterdam", phone_number: "06 11628545"
  },
  {  name: "3 Trees Cafe",
    location: "Zieseniskade 26, 1017 RW Amsterdam, Netherlands",
    url: "https://www.wagyukanata.com/amsterdam",
    photos: "https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Netherlands/Amsterdam/amsterdam-VanOost-Restaurant-85.jpg",
   city: "Amsterdam", phone_number: "020-2801334"
  },
  {
    name: "The Pantry",
    location: "Leidsekruisstraat 21, 1017",
    url: "https://www.thepantry.nl/en/",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/19/9f/2c/restaurant-1eklas.jpg?w=600&h=-1&s=1",
   city: "Amsterdam", phone_number: "020 620 0922"
  }


  ]

  restaurants_data.each do |restaurant_data|
    Restaurant.create(restaurant_data)
    puts "Created #{restaurant_data[:name]}"
    sleep 5
  end

puts "Created #{Restaurant.count} restaurants"

# restaurants = Restaurant.all
# restaurants.each do |restaurant|
#   restaurant.update(city: "Amsterdam")
# end

puts "creating rome restaurants"

Restaurant.create([
  {
    name: "Tonnarello",
    location: "V. della Paglia, 1/2/3, 00153 Roma ",
    url: "https://tonnarello.it",
    photos: "https://lh3.googleusercontent.com/p/AF1QipPWybJzUIA35eC9qreEEOakdhEuRYmJnFNAI0Lo=s1360-w1360-h1020",
    phone_number: "",
    city: "Rome"
  },
  {
    name: "Ambrosia Rooftop Restaurant & Bar",
    location: "V. della Paglia, 1/2/3, 00153 Roma ",
    url: "https://www.hotelartemide.it/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipMfHY02yGTP153sDaSsO3pBfth48LmBunki_WpH=s1360-w1360-h1020",
    phone_number: "+39 06 4899 1763",
    city: "Rome"
  },
  {
    name: "Line Brew Astana",
    location: "Kenesary St 20, Astana 010000",
    url: "https://www.hotelartemide.it/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipMfHY02yGTP153sDaSsO3pBfth48LmBunki_WpH=s1360-w1360-h1020",
    phone_number: "+39 06 4899 1763",
    city: "Astana"
  }

])

puts "Created #{Restaurant.count} restaurants"


#   puts "Destroying old recommendations"
# # Recommendation.destroy_all
# puts "Creating new recommendations"
#   Recommendation.create([
#     {
#       content: "Great food, great service, great atmosphere. I would definitely recommend this place to anyone looking for a great dining experience.",
#       restaurant_id: 120,
#       user_id: 1,
#       tags: "great food, great service",
#     }

#   ])

#   puts "Created recommendation restaurants"
