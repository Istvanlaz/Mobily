# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

Product.destroy_all
# User.destroy_all

# puts "Creating some useful users..."

# user_1 = User.new( {
#   # username: "Jery",
#   email: "Jerry.slang@hotmail.com",
#   password: '123456',
#   password_confirmation: '123456'
# })
# # user_1.remote_avatar_url = "https://chartwellspeakers.b-cdn.net/wp-content/uploads/2017/10/Kahneman-2.jpg",
# user_1.save!

# user_2 = User.new( {
#   # username: "sherry",
#   email: "sherry.stan@hotmail.com",
#   password: '123456',
#   password_confirmation: '123456'
# })
# # user_2.remote_avatar_url = "https://chartwellspeakers.b-cdn.net/wp-content/uploads/2017/10/Kahneman-2.jpg",
# user_2.save!

# user_3 = User.new( {
#   # username: "ricer",
#   email: "ricer.lo@outlook.com",
#   password: '123456',
#   password_confirmation: '123456'
# })
# # user_3.remote_avatar_url = "https://chartwellspeakers.b-cdn.net/wp-content/uploads/2017/10/Kahneman-2.jpg",
# user_3.save!

# user_4 = User.new( {
#   # username: "jug",
#   email: "jug.zar@oneup.com",
#   password: '123456',
#   password_confirmation: '123456'
# })
# # user_4.remote_avatar_url = "https://chartwellspeakers.b-cdn.net/wp-content/uploads/2017/10/Kahneman-2.jpg",
# user_4.save!

# user_5 = User.new( {
#   # username: "gola",
#   email: "gola.bolo@gmail.com",
#   password: '123456',
#   password_confirmation: '123456'
# })
# user_5.save!

# puts "Total number of users: #{User.all.count}"


puts 'Creating awesome products...'


product_1 = Product.new( {
  name: "Long Diner Table",
  price: 1
  # user_id: user_1.id
})
product_1.save!

product_2 = Product.new( {
  name: "Rocking Chair",
  price: 3
  # user_id: user_2.id
})
product_2.save!

product_3 = Product.new( {
  name: "Working Desk",
  price: 5
  # user_id: user_3.id
})
product_3.save!

product_4 = Product.new( {
  name: "Sofa",
  price: 50
  # user_id: user_4.id
})
product_4.save!

product_5 = Product.new( {
  name: "Bed Frame",
  price: 20
  # user_id: user_5.id
})
product_5.save!


puts "Total number of products: #{Product.all.count}"

puts "Product names: #{Product.all.pluck("name")}"
puts "Product1: #{product_1.name} price: #{product_1.price.round(2)}"
puts "Product2: #{product_2.name} price: #{product_2.price.round(2)}"
puts "Product3: #{product_3.name} price: #{product_3.price.round(2)}"
puts "Product4: #{product_4.name} price: #{product_4.price.round(2)}"
puts "Product5: #{product_5.name} price: #{product_5.price.round(2)}"
























