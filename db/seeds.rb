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
    url: "https://www.franggo.nl",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/19/9f/2c/restaurant-1eklas.jpg?w=600&h=-1&s=1"
  },
  {
    name: "Dignita Vondelpark",
    location: "Koninginneweg 218",
    url: "https://eatwelldogood.nl",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/a1/5f/05/dignita.jpg?w=2000&h=-1&s=1"
  },
  {
    name: "Vinkeles",
    location: "Keizersgracht 384",
    url: "https://www.vinkeles.com",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/1d/68/23/interior-restaurant-vinkeles.jpg?w=1400&h=-1&s=1"
  },
  {
    name: "Ciel Bleu Restaurant",
    location: "Ferdinand Bolstraat 333",
    url: "https://www.cielbleu.nl",
    photos: "https://lh3.googleusercontent.com/p/AF1QipM3slhyjQN0j0nLqkbkNfqnO7vG8asWPWOMPY6D=s1360-w1360-h1020"
  },
  {
    name: "Dimitri's Restaurant",
    location: "Insulindeweg 1",
    url: "https://www.dimitris.amsterdam/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipOJwnSK0IYtrmJgM7k3VdIvm5Q96bGCcns3HPwh=s1360-w1360-h1020"
  },

  {
    name: "Yam yam trattoria-pizzeria",
    location: "Frederik Hendrikstraat 90",
    url: "https://www.yam-yam-trattoria-pizzeria.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipPFXFn0MQb9UGkDlM45qSTaXrXN2as4Oj-tNmrb=s1360-w1360-h1020"
  },

  {
    name: "Mana Mana West",
    location: "Frederik Hendrikplantsoen 36",
    url: "https://mana-mana.nl",
    photos: "https://lh3.googleusercontent.com/p/AF1QipNAaf3-CxZNsAo1_l6smh7jY6vrJzHX2XeaTbzd=s1360-w1360-h1020"

  },

  {
    name: "Mondi Amsterdam New West",
    location: "Aletta Jacobslaan 7",
    url: "https://www.mondirestaurant.com/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipNAaf3-CxZNsAo1_l6smh7jY6vrJzHX2XeaTbzd=s1360-w1360-h1020"
  },
  {
    name: "Bar Bouche",
    location: "Wibautstraat 107h",
    url: "https://www.barbouche.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipMfCTzvyUzf2Gg2ocVIupiXaZ2mNw5YGw6yq1WT=s1360-w1360-h1020"
  },
  {
    name: "Poppy's Amsterdam",
    location: "Lutmastraat 99",
    url: "https://www.poppysamsterdam.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipO7XhpOOssy3fPKN1glqrLcT8Wg4rbYkFoG38xp=s1360-w1360-h1020"
  },
  {
    name: "Bar Kartel",
    location: "Overtoom 28",
    url: "https://bar-kartel.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipNeeWzxB2IiaP1xU3Tn65WdWQDMxDzDTiPySEmm=s1360-w1360-h1020"
  },
  {
    name: "Lavash",
    location: "Korte Leidsedwarsstraat 119",
    url: "https://restaurantlavash.nl",
    photos: "https://lh3.googleusercontent.com/p/AF1QipNX2IznYm_Dqad8-VtRBGFY5mWJVkqkwQci_7Nj=s1360-w1360-h1020"
  },
  {
    name: "Silom Thai Brasserie",
    location: "Voetboogstraat 13,",
    url: "https://silomthaibrasserie.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipPP129CXSHmVXi-yH9sSjRyPgbWhxQOrgDMCnVF=s1360-w1360-h1020"
  },
  {
    name: "Tasca Bellota",
    location: "Bickerswerf 2, 1013 KX Amsterdam",
    url: "https://tascabellota.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipMVKPqevsOPYmPvfl5NPU12RwGJVViUJUt7qqv_=s1360-w1360-h1020"
  },
  {
    name: "Señor Mostachio",
    location: "Ruysdaelkade 183",
    url: "https://www.senor-mostachio-amsterdam.nl/",
    photos: "https://lh3.googleusercontent.com/p/AF1QipOiPi5LD7sT_-BhNxQ_iCSsXV6B9DECQ-3Tq4XR=s1360-w1360-h1020"
  },
  {
    name: "3 Trees Cafe",
    location: "Zieseniskade 26, 1017 RW Amsterdam, Netherlands",
    url: "https://www.wagyukanata.com/amsterdam",
    photos: "https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Netherlands/Amsterdam/amsterdam-VanOost-Restaurant-85.jpg"
  },
  {
    name: "The Pantry",
    location: "Leidsekruisstraat 21, 1017 RE Amsterdam, Netherlands",
    url: "https://www.thepantry.nl/en/",
    photos: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/19/19/9f/2c/restaurant-1eklas.jpg?w=600&h=-1&s=1"
  }
  ])
