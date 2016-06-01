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
description: %{<p>
Super sweet cover and a good dipiction of what I am currently working on.
</p>},
image_url: "devops.jpg",
price: 49.95)

Product.create!(title: "Rapid Android Development",
description: %{<p>
Next stop.
</p>},
image_url: "android.png",
price: 49.95)
