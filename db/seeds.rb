# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'

Product.destroy_all
Category.destroy_all
SubCategory.destroy_all
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

puts 'Creating awesome categories...'


category_1 = Category.new( {
  name: "To Sit"
})
category_1.save!

category_2 = Category.new( {
  name: "Lights"
})
category_2.save!

category_3 = Category.new( {
  name: "Furniture"
})
category_3.save!

category_4 = Category.new( {
  name: "Art & Decoration"
})
category_4.save!

category_5 = Category.new( {
  name: "Books & Leisure"
})
category_5.save!

category_6 = Category.new( {
  name: "Kids"
})
category_6.save!


puts 'Creating awesome sub-categories...'


sub_category_1 = SubCategory.new( {
  name: "Chairs",
  category_id: category_1.id
})
sub_category_1.save!

sub_category_2 = SubCategory.new( {
  name: "Sofas",
  category_id: category_1.id
})
sub_category_2.save!

sub_category_3 = SubCategory.new( {
  name: "Big Lamps",
  category_id: category_2.id
})
sub_category_3.save!

sub_category_4 = SubCategory.new( {
  name: "Small Lamps",
  category_id: category_2.id
})
sub_category_4.save!

sub_category_5 = SubCategory.new( {
  name: "Tables",
  category_id: category_3.id
})
sub_category_5.save!

sub_category_6 = SubCategory.new( {
  name: "Drawers",
  category_id: category_3.id
})
sub_category_6.save!

sub_category_7 = SubCategory.new( {
  name: "Paintings",
  category_id: category_4.id
})
sub_category_7.save!

sub_category_8 = SubCategory.new( {
  name: "Plants",
  category_id: category_4.id
})
sub_category_8.save!

sub_category_9 = SubCategory.new( {
  name: "Thriller",
  category_id: category_5.id
})
sub_category_9.save!

sub_category_10 = SubCategory.new( {
  name: "Fiction",
  category_id: category_5.id
})
sub_category_10.save!

sub_category_11 = SubCategory.new( {
  name: "Boys",
  category_id: category_6.id
})
sub_category_11.save!

sub_category_12 = SubCategory.new( {
  name: "Girls",
  category_id: category_6.id
})
sub_category_12.save!


puts 'Creating awesome products...'


product_1 = Product.new( {
  name: "Rocking Chair",
  price: 30,
  sub_category_id: sub_category_1.id,
  category_id: category_1.id
  # category: category_1
  # user_id: user_1.id
})
product_1.save!

product_2 = Product.new( {
  name: "Kitchen Stool",
  price: 5,
  sub_category_id: sub_category_1.id,
  category_id: category_1.id
  # category: category_1
  # user_id: user_2.id
})
product_2.save!

product_3 = Product.new( {
  name: "Sofa 2 places",
  price: 5,
  sub_category_id: sub_category_2.id,
  category_id: category_1.id
  # category: category_1
  # user_id: user_3.id
})
product_3.save!

product_4 = Product.new( {
  name: "Sofa 3 places",
  price: 50,
  sub_category_id: sub_category_2.id,
  category_id: category_1.id
  # category: category_1
  # user_id: user_4.id
})
product_4.save!

product_5 = Product.new( {
  name: "Lampe Victorienne",
  price: 20,
  sub_category_id: sub_category_3.id,
  category_id: category_2.id
  # category: category_2
  # user_id: user_3.id
})
product_5.save!

product_6 = Product.new( {
  name: "Lampe Banale",
  price: 1,
  sub_category_id: sub_category_3.id,
  category_id: category_2.id
  # category: category_2
  # user_id: user_1.id
})
product_6.save!

product_7 = Product.new( {
  name: "Lampe de Bureau",
  price: 3,
  sub_category_id: sub_category_4.id,
  category_id: category_2.id
  # category: category_2
  # user_id: user_2.id
})
product_7.save!

product_8 = Product.new( {
  name: "Lampe de Chevet",
  price: 5,
  sub_category_id: sub_category_4.id,
  category_id: category_2.id
  # category: category_2
  # user_id: user_3.id
})
product_8.save!

product_9 = Product.new( {
  name: "Long Diner Table",
  price: 50,
  sub_category_id: sub_category_5.id,
  category_id: category_3.id
  # category: category_3
  # user_id: user_4.id
})
product_9.save!

product_10 = Product.new( {
  name: "Working Desk",
  price: 20,
  sub_category_id: sub_category_5.id,
  category_id: category_3.id
  # category: category_3
  # user_id: user_5.id
})
product_10.save!

product_11 = Product.new( {
  name: "Big Drawer",
  price: 1,
  sub_category_id: sub_category_6.id,
  category_id: category_3.id
  # category: category_3
  # user_id: user_1.id
})
product_11.save!

product_12 = Product.new( {
  name: "Small Drawer",
  price: 3,
  sub_category_id: sub_category_6.id,
  category_id: category_3.id
  # category: category_3
  # user_id: user_2.id
})
product_12.save!

product_13 = Product.new( {
  name: "Picasso",
  price: 5,
  sub_category_id: sub_category_7.id,
  category_id: category_4.id
  # category: category_4
  # user_id: user_3.id
})
product_13.save!

product_14 = Product.new( {
  name: "Turner",
  price: 50,
  sub_category_id: sub_category_7.id,
  category_id: category_4.id
  # category: category_4
  # user_id: user_4.id
})
product_14.save!

product_15 = Product.new( {
  name: "Tulipe",
  price: 20,
  sub_category_id: sub_category_8.id,
  category_id: category_4.id
  # category: category_4
  # user_id: user_8.id
})
product_15.save!

product_16 = Product.new( {
  name: "Eucaliptus",
  price: 1,
  sub_category_id: sub_category_8.id,
  category_id: category_4.id
  # category: category_4
  # user_id: user_1.id
})
product_16.save!

product_17 = Product.new( {
  name: "Nuit d'Été",
  price: 5,
  sub_category_id: sub_category_9.id,
  category_id: category_5.id
  # category: category_4
  # user_id: user_3.id
})
product_17.save!

product_18 = Product.new( {
  name: "Que ta Volonté Soit Faite",
  price: 50,
  sub_category_id: sub_category_9.id,
  category_id: category_5.id
  # category: category_4
  # user_id: user_4.id
})
product_18.save!

product_19 = Product.new( {
  name: "Ravage",
  price: 20,
  sub_category_id: sub_category_10.id,
  category_id: category_5.id
  # category: category_4
  # user_id: user_8.id
})
product_19.save!

product_20 = Product.new( {
  name: "Loup Blanc",
  price: 1,
  sub_category_id: sub_category_10.id,
  category_id: category_5.id
  # category: category_4
  # user_id: user_1.id
})
product_20.save!

product_21 = Product.new( {
  name: "Action Man",
  price: 3,
  sub_category_id: sub_category_11.id,
  category_id: category_6.id
  # category: category_6
  # user_id: user_2.id
})
product_21.save!

product_22 = Product.new( {
  name: "Play Mobile",
  price: 5,
  sub_category_id: sub_category_11.id,
  category_id: category_6.id
  # category: category_6
  # user_id: user_3.id
})
product_22.save!

product_23 = Product.new( {
  name: "Barbie",
  price: 50,
  sub_category_id: sub_category_12.id,
  category_id: category_6.id
  # category: category_6
  # user_id: user_4.id
})
product_23.save!

product_24 = Product.new( {
  name: "Legos",
  price: 20,
  sub_category_id: sub_category_12.id,
  category_id: category_6.id
  # category: category_6
  # user_id: user_5.id
})
product_24.save!


puts "DATABASE SUCCESSFULLY SEEDED."


puts "Total number of categories: #{Category.all.count}"
puts "Total number of sub-categories: #{SubCategory.all.count}"
puts "Total number of products: #{Product.all.count}"

# puts "Product names: #{Product.all.pluck("name")}"
# puts "Product1: #{product_1.name} price: #{product_1.price.round(2)}"
# puts "Product2: #{product_2.name} price: #{product_2.price.round(2)}"
# puts "Product3: #{product_3.name} price: #{product_3.price.round(2)}"
# puts "Product4: #{product_4.name} price: #{product_4.price.round(2)}"
# puts "Product5: #{product_5.name} price: #{product_5.price.round(2)}"
























