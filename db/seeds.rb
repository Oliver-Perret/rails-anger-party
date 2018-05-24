Place.destroy_all

pierre = User.create(email: "maxime@rimbault.fr", password: "12345abcdef")
malika = User.create(email: "tinfou.malika@gmail.com", password: "malika")


tati = Place.create(title: "Tati shop", address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 202, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower", owner: pierre)
tati.remote_photo_url = "http://www.metropoleparis.com/1998/311/tati311.jpg"
tati.save


 candy = Place.create(title: "Candy shop", owner: pierre, address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 359, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower")
 candy.remote_photo_url = "https://c1.staticflickr.com/4/3532/3231495022_bdd976bcfa_b.jpg"
 candy.save

 spain_villa = Place.create(title: "Luxury villa in Spain", owner: malika, address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 980, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower")
 spain_villa.remote_photo_url = "https://theluxuryvillacollection.com/wp-content/uploads/2015/11/Luxury-beach-villa-spain-to-rent.jpg"
 spain_villa.save

 alpe_chalet = Place.create(title: "Cozy Alpes chalet", owner: malika, address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 122, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower")
 alpe_chalet.remote_photo_url = "https://images.sudouest.fr/2017/04/12/58ed854866a4bdd16c1d123f/widescreen/1000x500/le-chalet-bois-a-ete-tres-endommage-photo-alain-marchier.jpg"
 alpe_chalet.save


old_garage = Place.create(title: "Old garage", owner: pierre, address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 235, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower")
old_garage.remote_photo_url = "http://www.southpolestation.com/0708/ppdemo1.jpg"
old_garage.save


sushi_resto = Place.create(title: "Suhi restaurant", owner: pierre, address: "14 avenue Napoléon, PARIS 75012", description: "A nice and cosy clothes shop in the heart of Paris", price: 750, equipment: "lot of stuff", destroy_pack: "Damage", category: "Shop", rate: 4, sleepings: 12, tools: "Flame thrower")
sushi_resto.remote_photo_url = "http://modusushi.com/wp-content/uploads/2014/02/icg.png"
sushi_resto.save

