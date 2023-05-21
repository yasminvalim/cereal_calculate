# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

corn_flakes = LineItem.create(name: 'Corn Flakes', collection: 0, price: rand(32..39))
rice_krispies = LineItem.create(name: 'Rice Krispies', collection: 2, price: rand(32..39))
cheerios = LineItem.create(name: 'Cheerios', collection: 1, price: rand(32..39))
wheaties = LineItem.create(name: 'Wheaties', collection: 2, price: rand(32..39))
lucky_charms = LineItem.create(name: 'Lucky Charms', collection: 0, price: rand(32..39) )
frosted_flakes = LineItem.create(name: 'Frosted Flakes', collection: 1, price: rand(32..39))
froot_loops = LineItem.create(name: 'Froot Loops', collection: 2, price: rand(32..39))
honey_nut_cheerios = LineItem.create(name: 'Honey Nut Cheerios', collection: 1, price: rand(32..39))
cocoa_puffs = LineItem.create(name: 'Cocoa Puffs', collection: 0, price: rand(32..39))
special_k = LineItem.create(name: 'Special K ', collection: 0, price: rand(32..39))

cart1 = Cart.create

cart1.cart_items.create(line_item: corn_flakes)

cart2 = Cart.create

cart2.cart_items.create(line_item: rice_krispies)
cart2.cart_items.create(line_item: cocoa_puffs)

cart3 = Cart.create

cart3.cart_items.create(line_item: froot_loops)
cart3.cart_items.create(line_item: lucky_charms)
cart3.cart_items.create(line_item: frosted_flakes)

cart4 = Cart.create

cart4.cart_items.create(line_item: honey_nut_cheerios)
cart4.cart_items.create(line_item: special_k)
cart4.cart_items.create(line_item: wheaties)
cart4.cart_items.create(line_item: cheerios)


cart5 = Cart.create

cart5.cart_items.create(line_item: honey_nut_cheerios)
cart5.cart_items.create(line_item: special_k)
cart5.cart_items.create(line_item: rice_krispies)
cart5.cart_items.create(line_item: cocoa_puffs)
cart5.cart_items.create(line_item: corn_flakes)



