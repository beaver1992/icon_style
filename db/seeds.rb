# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Faker::Config.locale = 'ru'

Product.destroy_all

10.times do
  Product.create!(name: Faker::Commerce.product_name,
                 price: Faker::Commerce.price,
                 articul: Faker::Number.number(8))
end

puts "Add #{Product.count} book(s)."
