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
  # 1
   name: "Franggo De Pijp",
    location: "Eerste Sweelinckstraat 9h",
    city: "Amsterdam",
    phone_number: "+31 203 031 046",
    url: "https://www.franggo.nl",
    photos: "https://cdn.sanity.io/images/i34ufiqg/production/f59fc43083e3067d0a7d5188843e60a6d4810868-5760x3840.jpg?q=35&h=1000&auto=format",
    category: "Casual"
  },
  {
    # 2
    name: "Dignita Vondelpark",
    location: "Koninginneweg 218",
    city: "Amsterdam",
    phone_number: "+31 220 221 458",
    url: "https://eatwelldogood.nl",
    photos: "https://lh3.googleusercontent.com/p/AF1QipOM2_wNVX7GrxlaVqYGekaNbvZdwGtGhxN69ow=s1360-w1360-h1020",
    category: "Sustainable"
  },
  {
    # 3
    name: "Vinkeles",
    location: "Keizersgracht 384",
    city: "Amsterdam",
    phone_number: "+31 205 302 010",
    url: "https://www.vinkeles.com",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/1d/68/23/interior-restaurant-vinkeles.jpg?w=1400&h=-1&s=1",
    category: "Fine Dining"
  },
  {
    # 4
    name: "Benji's Oost",
    location: "Wibautstraat 196",
    city: "Amsterdam",
    phone_number: "+31 202 238 787",
    url: "https://www.benjis.amsterdam",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/cf/22/05/benji-s-east.jpg?w=1400&h=-1&s=1",
    category: "Breakfast"
  },
  {
    # 5
    name: "Ciel Bleu",
    location: "Ferdinand Bolstraat 333",
    city: "Amsterdam",
    phone_number: "+31 206 787 450",
    url: "https://www.cielbleu.nl",
    photos: "https://lh3.googleusercontent.com/p/AF1QipM3slhyjQN0j0nLqkbkNfqnO7vG8asWPWOMPY6D=s1360-w1360-h1020",
    category: "Fine Dining"
  },
  {
    # 6
    name: "Dimitri's Restaurant",
    location: "Insulindeweg 1",
    city: "Amsterdam",
    phone_number: "+31 203 044 654",
    url: "https://www.dimitris.amsterdam/",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/63/2b/c8/restaurant.jpg?w=1400&h=-1&s=1",
    category: "Dinner"
  },
  {
    # 7
    name: "YamYam Trattoria Pizzeria",
    location: "Frederik Hendrikstraat 88 - 90",
    city: "Amsterdam",
    phone_number: "+31 206 815 097",
    url: "https://www.yam-yam-trattoria-pizzeria.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipPFXFn0MQb9UGkDlM45qSTaXrXN2as4Oj-tNmrb=s1360-w1360-h1020",
    category: "Italian"
  },
  {
    # 8
    name: "De Plantage",
    location: "Plantage Kerklaan 36",
    city: "Amsterdam",
    phone_number: "+31 207 606 800",
    url: "https://www.caferestaurantdeplantage.nl",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/53/f7/91/photo2jpg.jpg?w=600&h=-1&s=1",
    category: "Breakfast"
  },
  {
    # 9
    name: "Vegan Junk Food Bar",
    location: "Marie Heinekenplein 9",
    city: "Amsterdam",
    phone_number: "+31 6 18 95 50 02",
    url: "https://www.veganjunkfoodbar.com",
    photos: "https://lh3.googleusercontent.com/p/AF1QipOQJXSR7IuOO4aCcps3pSy_sz2yvaeY7TakjA9Q=s1360-w1360-h1020",
    category: "Vegetarian"
  },
  {
    # 10
    name: "de Tulp",
    location: "Marie Heinekenplein 33",
    city: "Amsterdam",
    phone_number: "+31 206 704 661",
    url: "https://tulp.amsterdam",
    photos: "https://lh3.googleusercontent.com/p/AF1QipO175Mlje3pt3AALxi503N8BQ9LE607EiXzX54O=s1360-w1360-h1020",
    category: "Bar"
  },
  {
    #1 1
    name: "SUGARBAR by Tudy's Kitchen",
    location: "De Clercqstraat 48",
    city: "Amsterdam",
    url: "https://www.tudyssugarbar.com",
    photos: "https://www.iamsterdam.com/_next/image?url=https%3A%2F%2Fmedia.iamsterdam.com%2Fw_907%2Ch_514%2F735lwme0yrhd-img-6454.webp&w=1920&q=75",
    category: "Dessert"
  },
  {
    # 12
    name: "Dona",
    location: "Nicolaas Beetsstraat 47H",
    city: "Amsterdam",
    phone_number: "+31 657 736 955",
    url: "https://www.donarestaurant.com",
    photos: "https://lh3.googleusercontent.com/p/AF1QipNCTwqUxbxCUeM6tMhIOYy6io3EQYgalCJd2krf=s1360-w1360-h1020",
    category: "Fine Dining"
  },
  {
    # 13
    name: "Café Kiebêrt",
    location: "Address: Marathonweg 2",
    city: "Amsterdam",
    phone_number: "+31 208 458 283",
    url: "https://cafekiebert.nl",
    photos: "https://lh3.googleusercontent.com/p/AF1QipPoRBdFIHQpnbXSBm0t2jMwgHMLFb15sgrjBA87=s1360-w1360-h1020",
    category: "Coffee"
  },

  {
    name: "Poppy's Amsterdam",
    location: "Lutmastraat 99",
    url: "https://www.poppysamsterdam.nl/",
    city: "Amsterdam",
    photos: "https://lh3.googleusercontent.com/p/AF1QipO7XhpOOssy3fPKN1glqrLcT8Wg4rbYkFoG38xp=s1360-w1360-h1020",
    phone_number: "020 341 8799",
   category: "Vegetarian"
  },
  {
    name: "Bakery Louf",
    location:"Bilderdijkstraat 38",
    url: "https://www.bakkerijlouf.nl",
    photos: "https://static.wixstatic.com/media/3d7e86_2ad870beac8848a1b1677c0a7b1851f2~mv2.jpg/v1/crop/x_0,y_0,w_1800,h_1211/fill/w_1688,h_1136,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/loof_1%2C5x.jpg",
    city: "Amsterdam"
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
    name: "Life Ristorante",
    location: "KVia della Vite, 28, 00187",
    url: "https://www.ristorantelife.com/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipOfcczrElWBAOIUoAgnVuo2M9-XY_KxBFhQt2Xn=s1360-w1360-h1020",
    phone_number: "+39 06 4899 1763",
    city: "Rome"
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
