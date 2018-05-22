User.destroy_all
Place.destroy_all

pierre = User.create(email: "maxime@rimbault.fr", password: "12345abcdef")

Place.create(title: "Tati shop", owner: pierre, address: "14 avenue Napoléon, PARIS 75012", description: "nice", price: 42, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 4, tools: "Shop")
Place.create(title: "Garage", owner: pierre, destroy_pack: "Destroy", price: 39, category: "Shop")
Place.create(title: "Villa", owner: pierre, destroy_pack: "Damage", price: 45, category: "House & apt.")
Place.create(title: "Hotel reception", owner: pierre, destroy_pack: "Damage", price: 31, category: "Tourism")
Place.create(title: "School class", owner: pierre, destroy_pack: "Damage", price: 22, category: "Other")
Place.create(title: "Manor", owner: pierre, price: 76, category: "Luxury")
