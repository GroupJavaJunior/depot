# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

products = [
  { title: 'Product title', description: %(Some description),
    image_url: '1.jpeg', price: 49.95 },
  { title: 'Product title 2', description: %(Some description for product 2),
    image_url: '2.png', price: 39.95 },
  { title: 'Product title 3', description: %(Some description for product 3),
    image_url: '3.jpeg', price: 29.95 },
  { title: 'Product title 4', description: %(Some description for product 4),
    image_url: '4.jpg', price: 19.95 }
]

products.each { |product| Product.create!(product) }
