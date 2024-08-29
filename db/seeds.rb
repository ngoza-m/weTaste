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
Restaurant.create([
  {
    name: "Franggo De Pijp",
    address: "Eerste Sweelinckstraat 9h",
    website: "https://www.franggo.nl"
  },
  {
    name: "Dignita Vondelpark",
    address: "Koninginneweg 218",
    website: "https://eatwelldogood.nl"
  },
  {
    name: "Vinkeles",
    address: "Keizersgracht 384",
    website: "https://www.vinkeles.com"
  },
  {
    name: "Ciel Bleu Restaurant",
    address: "Ferdinand Bolstraat 333",
    website: "https://www.cielbleu.nl"
  },
  {
    name: "Dimitri's Restaurant",
    address: "Insulindeweg 1",
    website: "https://www.dimitris.amsterdam/"
  },

  {
    name: "Yam yam trattoria-pizzeria",
    address: "Frederik Hendrikstraat 90",
    website: "https://www.yam-yam-trattoria-pizzeria.nl/"
  },

  {
    name: "Mana Mana West",
    address: "Frederik Hendrikplantsoen 36",
    website: "https://mana-mana.nl"

  },

  {
    name: "Mondi Amsterdam New West",
    address: "Aletta Jacobslaan 7",
    website: "https://www.mondirestaurant.com/"
  },
  {
    name: "Bar Bouche",
    address: "Wibautstraat 107h",
    website: "https://www.barbouche.nl/"
  },
  {
    name: "Poppy's Amsterdam",
    address: "Lutmastraat 99",
    website: "https://www.poppysamsterdam.nl/"
  },
  {
    name: "Bar Kartel",
    address: "Overtoom 28",
    website: "https://bar-kartel.nl/"
  },
  {
    name: "Lavash",
    address: "Korte Leidsedwarsstraat 119",
    website: "https://restaurantlavash.nl"
  },
  {
    name: "Silom Thai Brasserie",
    address: "Voetboogstraat 13,",
    website: "https://silomthaibrasserie.nl/"
  },
  {
    name: "Tasca Bellota",
    address: "Bickerswerf 2, 1013 KX Amsterdam",
    website: "https://tascabellota.nl/"
  },
  {
    name: "Señor Mostachio",
    address: "Ruysdaelkade 183",
    website: "https://www.senor-mostachio-amsterdam.nl/"
  }

  ])
