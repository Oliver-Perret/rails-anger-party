Place.destroy_all

pierre = User.create(email: "maxime@rimbault.fr", password: "12345abcdef")
malika = User.create(email: "tinfou.malika@gmail.com", password: "malika")

Place.create(title: "Tati shop", address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 202, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower", owner: pierre)
Place.create(title: "Candy shop", owner: pierre, address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 359, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower")
Place.create(title: "Luxury villa in Spain", owner: malika, address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 980, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower")
Place.create(title: "Cozy Alpes chalet", owner: malika, address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 122, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower")
Place.create(title: "Old garage", owner: pierre, address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 235, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower")
Place.create(title: "Suhi restaurant", owner: pierre, address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 750, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower")
