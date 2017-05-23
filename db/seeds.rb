# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shop_list = [
  [ 'G.O.D. Goods of Desire','Shop No. B16 & B17, 93 Queensway Admiralty, Hong Kong, Admiralty','Admirality','A hub for all things Hong Kong-themed, G.O.D. (Goods of Desire) dish up exactly what’s on the label  – desirable and unique goods that capture the essence and culture surrounding this city we call home! Filled with perfect presents for friends and family that perhaps live abroad, bring a little Hong Kong heritage home to your loved ones.','http://www.sassyhongkong.com/wp-content/uploads/2013/03/GOD.jpg','10.00 - 21.00','no coordinates','https://god.com.hk/'],
  ['Homeless','29 Gough Street, Central','Central','Homeless is a one-stop-shop for the ultimate cool housewarming gift! Everything you may ever need is all under one roof and you are sure to find something that no one owns or has ever seen before! Filled to the brim with funky furniture, cool lighting and plenty of unique knick-knacks to sprinkle around your home, it also boasts the exclusive Hong Kong distribution rights to many top international design brands.','https://img.shoplineapp.com/media/image_clips/5811ab1f61706957d7aa0700/xlarge.jpg?1477552927','12.00 - 21.30','no coordinates','https://www.homelessexpress.com/'],
  ['Eclectic Cool','5 Sun Street,Wan Chai, Hong Kong,','Wan Chai','Founder, designer and former That Mama Joanne Pereira is the creative brains behind this innovative design concept. The eye-catching store brings superbly cool art, homeware, furniture, rugs, stationery and jewels closer to your door and take our word for it – you will find the perfect gift for the person who literally has everything (and everyone knows one of those!). Joanne travels constantly around the globe sourcing quirky products and keeping ahead of design trends.','http://www.sassyhongkong.com/wp-content/uploads/2016/11/shk-gift-stores-electic-cool.jpg','11.00 - 17.00','no coordinates','https://www.eclectic-cool.com/'],
  ['Über Tunique','12, Gough Street, Central, Hong Kong','Central','Über Tunique is brimming with gorgeous beauty, home and jewellery collections that would make for a super special and evergreen gift – without the high price tag! Luxury can be affordable (hurray!) at this cute store, so pop over to an Über Tunique near you to browse delicate rings, statement necklaces and classy clutches.','http://www.sassyhongkong.com/wp-content/uploads/2016/11/shk-gift-stores-uber-tunique.jpg','11.00 - 20.00','no coordinates','www.tunique.com'],
  ['Visionaire','G/F, 26 Gough Street, Central, Hong Kong,','Central','Stocking “cool things in all categories from around the world”, we love Visionaire‘s huge selection of lifestyle, home and beauty products. Be sure to check out the cool jewellery and accessories here as well (including Typographic Tote Bags and ERA ORA’s printed scarves), which would make great gifts for any occasion.','http://www.sassyhongkong.com/wp-content/uploads/2016/11/shk-gift-stores-visionaire.jpg','11:30 – 20.30','no coordinates','www.visionaire.hk']
]

shop_list.each do |name, address, area, description, picture, opening_hours, location, website|
  Shop.create(name: name, address: address, area: area, description: description, picture: picture, opening_hours: opening_hours, location: location, website: website )
end
