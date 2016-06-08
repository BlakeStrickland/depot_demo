# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create!(title: "Programming Ruby 2.3",
description: %{<p>
Ruby is the fastest growing and most exciting dynamic language out there. if you need to get working programs delivered fast, you should probably add Ruby to your toolbox.
</p>},
image_url: "ruby.png",
price: 49.95)

Product.create!(title: "DevOps in Practice",
description: "Super sweet cover and a good dipiction of what I am currently working on.",
image_url: "devops.jpg",
price: 49.95)

Product.create!(title: "Rapid Android Development",
description: "Next stop.",
image_url: "android.png",
price: 49.95)


User.create!(name: "Blake", password: "password")


Order.create!(name: "Joe", address: "123 main", email: "Joe@aol.com", pay_type: "Check")
Order.create!(name: "Bill", address: "456 main", email: "Billy@aol.com", pay_type: "Check")
Order.create!(name: "Mary", address: "789 main", email: "Mary@aol.com", pay_type: "Credit card")
Order.create!(name: "Racheal", address: "101 main", email: "Rach@aol.com", pay_type: "Purchase order")

cart1 = Cart.create!()
cart2 = Cart.create!()
cart3 = Cart.create!()
cart4 = Cart.create!()

LineItem.create!(product_id: 1, cart_id: cart1.id, order_id: 1)
LineItem.create!(product_id: 3, cart_id: cart2.id, order_id: 2)
LineItem.create!(product_id: 2, cart_id: cart3.id, order_id: 3)
LineItem.create!(product_id: 3, cart_id: cart3.id, order_id: 3)
LineItem.create!(product_id: 3, cart_id: cart4.id, order_id: 4)
LineItem.create!(product_id: 2, cart_id: cart4.id, order_id: 4)
LineItem.create!(product_id: 1, cart_id: cart4.id, order_id: 4)
