User.create(name:'jean', email: "maxime@rimbault.fr", password: "12345")

Place.create(title: "Tati shop", address: "14 avenue Napoléon, PARIS 75012", description: "nice", price: 42, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 4, tools: "Shop")
Place.create(title: "Garage", destroy_pack: "Destroy", price: 39, category: "Shop")
Place.create(title: "Villa", destroy_pack: "Damage", price: 45, category: "House & apt.")
Place.create(title: "Hotel reception", destroy_pack: "Damage", price: 31, category: "Tourism")
Place.create(title: "School class", destroy_pack: "Damage", price: 22, category: "Other")
Place.create(title: "Manor", price: 76, category: "Luxury")
