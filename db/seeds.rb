# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Cleaning database...'

Category.destroy_all
SubCategory.destroy_all
Product.destroy_all
# User.destroy_all

puts 'Database cleaned.'

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

## TO SIT

sub_category_1 = SubCategory.new( {
  name: "Armchairs",
  category_id: category_1.id
})
sub_category_1.save!

sub_category_2 = SubCategory.new( {
  name: "Benches",
  category_id: category_1.id
})
sub_category_2.save!

sub_category_3 = SubCategory.new( {
  name: "Chairs",
  category_id: category_1.id
})
sub_category_3.save!

sub_category_4 = SubCategory.new( {
  name: "Desk Chairs",
  category_id: category_1.id
})
sub_category_4.save!

sub_category_5 = SubCategory.new( {
  name: "Sofas",
  category_id: category_1.id
})
sub_category_5.save!

sub_category_6 = SubCategory.new( {
  name: "Others",
  category_id: category_1.id
})
sub_category_6.save!

## In: LIGHTS

sub_category_7 = SubCategory.new( {
  name: "Chandelier",
  category_id: category_2.id
})
sub_category_7.save!

sub_category_8 = SubCategory.new( {
  name: "Floor",
  category_id: category_2.id
})
sub_category_8.save!

sub_category_9 = SubCategory.new( {
  name: "Hanging",
  category_id: category_2.id
})
sub_category_9.save!

sub_category_10 = SubCategory.new( {
  name: "Lampshades",
  category_id: category_2.id
})
sub_category_10.save!

sub_category_11 = SubCategory.new( {
  name: "Reading",
  category_id: category_2.id
})
sub_category_11.save!

sub_category_12 = SubCategory.new( {
  name: "Others",
  category_id: category_2.id
})
sub_category_12.save!

## In: FURNITURE

sub_category_13 = SubCategory.new( {
  name: "Beds",
  category_id: category_3.id
})
sub_category_13.save!

sub_category_14 = SubCategory.new( {
  name: "Desks",
  category_id: category_3.id
})
sub_category_14.save!

sub_category_15 = SubCategory.new( {
  name: "Tables",
  category_id: category_3.id
})
sub_category_15.save!

sub_category_16 = SubCategory.new( {
  name: "Shelves",
  category_id: category_3.id
})
sub_category_16.save!

sub_category_17 = SubCategory.new( {
  name: "Storage",
  category_id: category_3.id
})
sub_category_17.save!

sub_category_18 = SubCategory.new( {
  name: "Wardrobes",
  category_id: category_3.id
})
sub_category_18.save!

sub_category_19 = SubCategory.new( {
  name: "Others",
  category_id: category_3.id
})
sub_category_19.save!

## In: ART & DECORATION

sub_category_20 = SubCategory.new( {
  name: "Accessories",
  category_id: category_4.id
})
sub_category_20.save!

sub_category_21 = SubCategory.new( {
  name: "Carpets",
  category_id: category_4.id
})
sub_category_21.save!

sub_category_22 = SubCategory.new( {
  name: "Mirrors",
  category_id: category_4.id
})
sub_category_22.save!

sub_category_23 = SubCategory.new( {
  name: "Paintings",
  category_id: category_4.id
})
sub_category_23.save!

sub_category_24 = SubCategory.new( {
  name: "Plants",
  category_id: category_4.id
})
sub_category_24.save!

sub_category_25 = SubCategory.new( {
  name: "Others",
  category_id: category_4.id
})
sub_category_25.save!

## In: BOOKS & LEISURE

sub_category_26 = SubCategory.new( {
  name: "Board Games",
  category_id: category_5.id
})
sub_category_26.save!

sub_category_27 = SubCategory.new( {
  name: "Books",
  category_id: category_5.id
})
sub_category_27.save!

sub_category_28 = SubCategory.new( {
  name: "Comics",
  category_id: category_5.id
})
sub_category_28.save!

sub_category_29 = SubCategory.new( {
  name: "Lounge",
  category_id: category_5.id
})
sub_category_29.save!

sub_category_30 = SubCategory.new( {
  name: "Video Games",
  category_id: category_5.id
})
sub_category_30.save!

sub_category_31 = SubCategory.new( {
  name: "Others",
  category_id: category_5.id
})
sub_category_31.save!

## In: KIDS

sub_category_32 = SubCategory.new( {
  name: "Kid Beds",
  category_id: category_6.id
})
sub_category_32.save!

sub_category_33 = SubCategory.new( {
  name: "Kid Books",
  category_id: category_6.id
})
sub_category_33.save!

sub_category_34 = SubCategory.new( {
  name: "Kid Chairs",
  category_id: category_6.id
})
sub_category_34.save!

sub_category_35 = SubCategory.new( {
  name: "Kid Furniture",
  category_id: category_6.id
})
sub_category_35.save!

sub_category_36 = SubCategory.new( {
  name: "Kid Toys",
  category_id: category_6.id
})
sub_category_36.save!

sub_category_37 = SubCategory.new( {
  name: "Others",
  category_id: category_6.id
})
sub_category_37.save!


puts 'Creating awesome products...'

#________________________________________________________

## In: TO SIT



### for: "Armchairs"   ID: 1

product_1 = Product.new( {
  name: "Stylish Armchair",
  price: rand(1..60),
  sub_category_id: sub_category_1.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
armchairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_1.image.attach(io: armchairs_pic_1, filename: 'armchairs_pic_1.jpg', content_type: 'image/jpg')
product_1.save!

product_2 = Product.new( {
  name: "Napoleon Style",
  price: rand(1..60),
  sub_category_id: sub_category_1.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
armchairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_2.image.attach(io: armchairs_pic_2, filename: 'armchairs_pic_2.jpg', content_type: 'image/jpg')
product_2.save!

product_3 = Product.new( {
  name: "Big Fudge",
  price: rand(1..60),
  sub_category_id: sub_category_1.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
armchairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_3.image.attach(io: armchairs_pic_3, filename: 'armchairs_pic_3.jpg', content_type: 'image/jpg')
product_3.save!

product_4 = Product.new( {
  name: "Rocking Chair",
  price: rand(1..60),
  sub_category_id: sub_category_1.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
armchairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_4.image.attach(io: armchairs_pic_4, filename: 'armchairs_pic_4.jpg', content_type: 'image/jpg')
product_4.save!


# ### for: "Benches"   ID: 2

product_5 = Product.new( {
  name: "Outdoor Bench",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
benches_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_5.image.attach(io: benches_pic_1, filename: 'benches_pic_1.jpg', content_type: 'image/jpg')
product_5.save!

product_6 = Product.new( {
  name: "Kitchen Bench",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
benches_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_6.image.attach(io: benches_pic_2, filename: 'benches_pic_2.jpg', content_type: 'image/jpg')
product_6.save!

product_7 = Product.new( {
  name: "Entry Bench",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
benches_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_7.image.attach(io: benches_pic_3, filename: 'benches_pic_3.jpg', content_type: 'image/jpg')
product_7.save!

product_8 = Product.new( {
  name: "Bench with Storage",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
benches_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_8.image.attach(io: benches_pic_4, filename: 'benches_pic_4.jpg', content_type: 'image/jpg')
product_8.save!


# ### for: "Chairs"   ID: 3

product_9 = Product.new( {
  name: "Kitchen Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_9.image.attach(io: chairs_pic_1, filename: 'chairs_pic_1.jpg', content_type: 'image/jpg')
product_9.save!

product_10 = Product.new( {
  name: "Wooden Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_10.image.attach(io: chairs_pic_2, filename: 'chairs_pic_2.jpg', content_type: 'image/jpg')
product_10.save!

product_11 = Product.new( {
  name: "Metal Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_11.image.attach(io: chairs_pic_3, filename: 'chairs_pic_3.jpg', content_type: 'image/jpg')
product_11.save!

product_12 = Product.new( {
  name: "Plastic Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_12.image.attach(io: chairs_pic_4, filename: 'chairs_pic_4.jpg', content_type: 'image/jpg')
product_12.save!


# ### for: "Desk Chairs"  ID: 4

product_13 = Product.new( {
  name: "Black Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
desk_chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_13.image.attach(io: desk_chairs_pic_1, filename: 'desk_chairs_pic_1.jpg', content_type: 'image/jpg')
product_13.save!

product_14 = Product.new( {
  name: "White Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
desk_chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_14.image.attach(io: desk_chairs_pic_2, filename: 'desk_chairs_pic_2.jpg', content_type: 'image/jpg')
product_14.save!

product_15 = Product.new( {
  name: "Blue Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
desk_chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_15.image.attach(io: desk_chairs_pic_3, filename: 'desk_chairs_pic_3.jpg', content_type: 'image/jpg')
product_15.save!

product_16 = Product.new( {
  name: "Classic Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
desk_chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_16.image.attach(io: desk_chairs_pic_4, filename: 'desk_chairs_pic_4.jpg', content_type: 'image/jpg')
product_16.save!


# ### for: "Sofas"  ID: 5

product_17 = Product.new( {
  name: "Red Sofa",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
sofas_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_17.image.attach(io: sofas_pic_1, filename: 'sofas_pic_1.jpg', content_type: 'image/jpg')
product_17.save!

product_18 = Product.new( {
  name: "Sofa 2 Places",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
sofas_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_18.image.attach(io: sofas_pic_2, filename: 'sofas_pic_2.jpg', content_type: 'image/jpg')
product_18.save!

product_19 = Product.new( {
  name: "Sofa 3 Places",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
sofas_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_19.image.attach(io: sofas_pic_3, filename: 'sofas_pic_3.jpg', content_type: 'image/jpg')
product_19.save!

product_20 = Product.new( {
  name: "Antique Sofa",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
sofas_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_20.image.attach(io: sofas_pic_4, filename: 'sofas_pic_4.jpg', content_type: 'image/jpg')
product_20.save!


# ### for: "Others"  ID: 6

product_21 = Product.new( {
  name: "Kitchen Stools",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
other_chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_21.image.attach(io: other_chairs_pic_1, filename: 'other_chairs_pic_1.jpg', content_type: 'image/jpg')
product_21.save!

product_22 = Product.new( {
  name: "Red Poof",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
other_chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_22.image.attach(io: other_chairs_pic_2, filename: 'other_chairs_pic_2.jpg', content_type: 'image/jpg')
product_22.save!

product_23 = Product.new( {
  name: "3 Garden Transat",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
other_chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_23.image.attach(io: other_chairs_pic_3, filename: 'other_chairs_pic_3.jpg', content_type: 'image/jpg')
product_23.save!

product_24 = Product.new( {
  name: "Big Poof",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id,
  address: "106 avenue de l'Université, Ixelles"
} )
other_chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_24.image.attach(io: other_chairs_pic_4, filename: 'other_chairs_pic_4.jpg', content_type: 'image/jpg')
product_24.save!

# #________________________________________________________

# ## In: LIGHTS


### for: "Chandelier"  ID: 7

product_25 = Product.new( {
  name: "Small Chandelier",
  price: rand(1..60),
  sub_category_id: sub_category_7.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
chandeliers_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716901/skhujrdzxcgibdfppxod.jpg')
product_25.image.attach(io: chandeliers_pic_1, filename: 'chandeliers_pic_1.jpg', content_type: 'image/jpg')
product_25.save!

product_26 = Product.new( {
  name: "Big Chandelier",
  price: rand(1..60),
  sub_category_id: sub_category_7.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
chandeliers_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716901/skhujrdzxcgibdfppxod.jpg')
product_26.image.attach(io: chandeliers_pic_2, filename: 'chandeliers_pic_2.jpg', content_type: 'image/jpg')
product_26.save!

product_27 = Product.new( {
  name: "Red Chandelier",
  price: rand(1..60),
  sub_category_id: sub_category_7.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
chandeliers_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716901/skhujrdzxcgibdfppxod.jpg')
product_27.image.attach(io: chandeliers_pic_3, filename: 'chandeliers_pic_3.jpg', content_type: 'image/jpg')
product_27.save!

product_28 = Product.new( {
  name: "Golden Chandelier",
  price: rand(1..60),
  sub_category_id: sub_category_7.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
chandeliers_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716901/skhujrdzxcgibdfppxod.jpg')
product_28.image.attach(io: chandeliers_pic_4, filename: 'chandeliers_pic_4.jpg', content_type: 'image/jpg')
product_28.save!


# ### for: "Floor Lamps"  ID: 8

product_29 = Product.new( {
  name: "Black Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_8.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
floor_lamps_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716915/mznq7fb70il9bvg8qyxs.jpg')
product_29.image.attach(io: floor_lamps_pic_1, filename: 'floor_lamps_pic_1.jpg', content_type: 'image/jpg')
product_29.save!

product_30 = Product.new( {
  name: "Set of two Metallic Lamps",
  price: rand(1..60),
  sub_category_id: sub_category_8.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
floor_lamps_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716915/mznq7fb70il9bvg8qyxs.jpg')
product_30.image.attach(io: floor_lamps_pic_2, filename: 'floor_lamps_pic_2.jpg', content_type: 'image/jpg')
product_30.save!

product_31 = Product.new( {
  name: "Red Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_8.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
floor_lamps_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716915/mznq7fb70il9bvg8qyxs.jpg')
product_31.image.attach(io: floor_lamps_pic_3, filename: 'floor_lamps_pic_3.jpg', content_type: 'image/jpg')
product_31.save!

product_32 = Product.new( {
  name: "Brown Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_8.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
floor_lamps_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716915/mznq7fb70il9bvg8qyxs.jpg')
product_32.image.attach(io: floor_lamps_pic_4, filename: 'floor_lamps_pic_4.jpg', content_type: 'image/jpg')
product_32.save!


# ### for: "Hanging Lamps"  ID: 9

product_33 = Product.new( {
  name: "Red Hanging Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_9.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
hangin_lamps_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716931/ofehcvrgafds15lbphgs.jpg')
product_33.image.attach(io: hangin_lamps_pic_1, filename: 'hangin_lamps_pic_1.jpg', content_type: 'image/jpg')
product_33.save!

product_34 = Product.new( {
  name: "Black Hanging Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_9.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
hangin_lamps_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716931/ofehcvrgafds15lbphgs.jpg')
product_34.image.attach(io: hangin_lamps_pic_2, filename: 'hangin_lamps_pic_2.jpg', content_type: 'image/jpg')
product_34.save!

product_35 = Product.new( {
  name: "Green Hanging Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_9.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
hangin_lamps_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716931/ofehcvrgafds15lbphgs.jpg')
product_35.image.attach(io: hangin_lamps_pic_3, filename: 'hangin_lamps_pic_3.jpg', content_type: 'image/jpg')
product_35.save!

product_36 = Product.new( {
  name: "Old Hanging Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_9.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
hangin_lamps_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716931/ofehcvrgafds15lbphgs.jpg')
product_36.image.attach(io: hangin_lamps_pic_4, filename: 'hangin_lamps_pic_4.jpg', content_type: 'image/jpg')
product_36.save!


puts "... 1/4 of the products have been created ..."


# ### for: "Lampshades"  ID: 10

product_37 = Product.new( {
  name: "Yellow Lampshade",
  price: rand(1..60),
  sub_category_id: sub_category_10.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
lampshades_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716948/wkbexe5vsz5ipmb6izyv.jpg')
product_37.image.attach(io: lampshades_pic_1, filename: 'lampshades_pic_1.jpg', content_type: 'image/jpg')
product_37.save!

product_38 = Product.new( {
  name: "Old Lampshade",
  price: rand(1..60),
  sub_category_id: sub_category_10.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
lampshades_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716948/wkbexe5vsz5ipmb6izyv.jpg')
product_38.image.attach(io: lampshades_pic_2, filename: 'lampshades_pic_2.jpg', content_type: 'image/jpg')
product_38.save!

product_39 = Product.new( {
  name: "Modern Lampshade",
  price: rand(1..60),
  sub_category_id: sub_category_10.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
lampshades_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716948/wkbexe5vsz5ipmb6izyv.jpg')
product_39.image.attach(io: lampshades_pic_3, filename: 'lampshades_pic_3.jpg', content_type: 'image/jpg')
product_39.save!

product_40 = Product.new( {
  name: "Artistic Lampshade",
  price: rand(1..60),
  sub_category_id: sub_category_10.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
lampshades_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716948/wkbexe5vsz5ipmb6izyv.jpg')
product_40.image.attach(io: lampshades_pic_4, filename: 'lampshades_pic_4.jpg', content_type: 'image/jpg')
product_40.save!


# ### for: "Reading Lamps"  ID: 11

product_41 = Product.new( {
  name: "Bedside Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_11.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
reading_lamps_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716961/ln3ttklwhdk7ykeyv8gk.jpg')
product_41.image.attach(io: reading_lamps_pic_1, filename: 'reading_lamps_pic_1.jpg', content_type: 'image/jpg')
product_41.save!

product_42 = Product.new( {
  name: "Table Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_11.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
reading_lamps_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716961/ln3ttklwhdk7ykeyv8gk.jpg')
product_42.image.attach(io: reading_lamps_pic_2, filename: 'reading_lamps_pic_2.jpg', content_type: 'image/jpg')
product_42.save!

product_43 = Product.new( {
  name: "Reading Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_11.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
reading_lamps_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716961/ln3ttklwhdk7ykeyv8gk.jpg')
product_43.image.attach(io: reading_lamps_pic_3, filename: 'reading_lamps_pic_3.jpg', content_type: 'image/jpg')
product_43.save!

product_44 = Product.new( {
  name: "Small Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_11.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
reading_lamps_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716961/ln3ttklwhdk7ykeyv8gk.jpg')
product_44.image.attach(io: reading_lamps_pic_4, filename: 'reading_lamps_pic_4.jpg', content_type: 'image/jpg')
product_44.save!


# ### for: "Others"  ID: 12

product_45 = Product.new( {
  name: "Big Candles",
  price: rand(1..60),
  sub_category_id: sub_category_12.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
candles_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716970/tubbklpvbdcg1lrund4z.jpg')
product_45.image.attach(io: candles_pic_1, filename: 'candles_pic_1.jpg', content_type: 'image/jpg')
product_45.save!

product_46 = Product.new( {
  name: "Small Candles",
  price: rand(1..60),
  sub_category_id: sub_category_12.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
candles_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716970/tubbklpvbdcg1lrund4z.jpg')
product_46.image.attach(io: candles_pic_2, filename: 'candles_pic_2.jpg', content_type: 'image/jpg')
product_46.save!

product_47 = Product.new( {
  name: "Outdoor Lamps",
  price: rand(1..60),
  sub_category_id: sub_category_12.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
candles_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716970/tubbklpvbdcg1lrund4z.jpg')
product_47.image.attach(io: candles_pic_3, filename: 'candles_pic_3.jpg', content_type: 'image/jpg')
product_47.save!

product_48 = Product.new( {
  name: "Outdoor Green Lamp",
  price: rand(1..60),
  sub_category_id: sub_category_12.id,
  category_id: category_2.id,
  address: "106 avenue de l'Université, Ixelles"
} )
candles_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716970/tubbklpvbdcg1lrund4z.jpg')
product_48.image.attach(io: candles_pic_4, filename: 'candles_pic_4.jpg', content_type: 'image/jpg')
product_48.save!

# #________________________________________________________

# ## In: FURNITURE


# ### for: "Beds"  ID: 13

product_49 = Product.new( {
  name: "Bed 2 places",
  price: rand(1..60),
  sub_category_id: sub_category_13.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
beds_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716977/a9igahbm1b5rr5gfxj4n.jpg')
product_49.image.attach(io: beds_pic_1, filename: 'beds_pic_1.jpg', content_type: 'image/jpg')
product_49.save!

product_50 = Product.new( {
  name: "Queen-size Bed",
  price: rand(1..60),
  sub_category_id: sub_category_13.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
beds_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716977/a9igahbm1b5rr5gfxj4n.jpg')
product_50.image.attach(io: beds_pic_2, filename: 'beds_pic_2.jpg', content_type: 'image/jpg')
product_50.save!

product_51 = Product.new( {
  name: "King-size Bed",
  price: rand(1..60),
  sub_category_id: sub_category_13.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
beds_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716977/a9igahbm1b5rr5gfxj4n.jpg')
product_51.image.attach(io: beds_pic_3, filename: 'beds_pic_3.jpg', content_type: 'image/jpg')
product_51.save!

product_52 = Product.new( {
  name: "Single Bed",
  price: rand(1..60),
  sub_category_id: sub_category_13.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
beds_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716977/a9igahbm1b5rr5gfxj4n.jpg')
product_52.image.attach(io: beds_pic_4, filename: 'beds_pic_4.jpg', content_type: 'image/jpg')
product_52.save!


# ### for: "Desks"  ID: 14

product_53 = Product.new( {
  name: "Red Desk",
  price: rand(1..60),
  sub_category_id: sub_category_14.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
desks_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591700558/xt7scyr9qqoefeporkf7.jpg')
product_53.image.attach(io: desks_pic_1, filename: 'desks_pic_1.jpg', content_type: 'image/jpg')
product_53.save!

product_54 = Product.new( {
  name: "Small Desk",
  price: rand(1..60),
  sub_category_id: sub_category_14.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
desks_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591700558/xt7scyr9qqoefeporkf7.jpg')
product_54.image.attach(io: desks_pic_2, filename: 'desks_pic_2.jpg', content_type: 'image/jpg')
product_54.save!

product_55 = Product.new( {
  name: "Big Old Black Desk",
  price: rand(1..60),
  sub_category_id: sub_category_14.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
desks_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591700558/xt7scyr9qqoefeporkf7.jpg')
product_55.image.attach(io: desks_pic_3, filename: 'desks_pic_3.jpg', content_type: 'image/jpg')
product_55.save!

product_56 = Product.new( {
  name: "Basic Desk",
  price: rand(1..60),
  sub_category_id: sub_category_14.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
desks_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591700558/xt7scyr9qqoefeporkf7.jpg')
product_56.image.attach(io: desks_pic_4, filename: 'desks_pic_4.jpg', content_type: 'image/jpg')
product_56.save!


# ### for: "Tables"  ID: 15

product_57 = Product.new( {
  name: "6 Places Table",
  price: rand(1..60),
  sub_category_id: sub_category_15.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
tables_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717003/klbsxpxyhbxnqspr9hoc.jpg')
product_57.image.attach(io: tables_pic_1, filename: 'tables_pic_1.jpg', content_type: 'image/jpg')
product_57.save!

product_58 = Product.new( {
  name: "12 Places Table",
  price: rand(1..60),
  sub_category_id: sub_category_15.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
tables_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717003/klbsxpxyhbxnqspr9hoc.jpg')
product_58.image.attach(io: tables_pic_2, filename: 'tables_pic_2.jpg', content_type: 'image/jpg')
product_58.save!

product_59 = Product.new( {
  name: "Wooden Table",
  price: rand(1..60),
  sub_category_id: sub_category_15.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
tables_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717003/klbsxpxyhbxnqspr9hoc.jpg')
product_59.image.attach(io: tables_pic_3, filename: 'tables_pic_3.jpg', content_type: 'image/jpg')
product_59.save!

product_60 = Product.new( {
  name: "Black Metallic Table",
  price: rand(1..60),
  sub_category_id: sub_category_15.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
tables_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717003/klbsxpxyhbxnqspr9hoc.jpg')
product_60.image.attach(io: tables_pic_4, filename: 'tables_pic_4.jpg', content_type: 'image/jpg')
product_60.save!


# ### for: "Shelves"  ID: 16

product_61 = Product.new( {
  name: "Wooden Shelf",
  price: rand(1..60),
  sub_category_id: sub_category_16.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
shelves_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717013/asfszgxmd7mnbjwggicl.jpg')
product_61.image.attach(io: shelves_pic_1, filename: 'shelves_pic_1.jpg', content_type: 'image/jpg')
product_61.save!

product_62 = Product.new( {
  name: "Metallic Shelf",
  price: rand(1..60),
  sub_category_id: sub_category_16.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
shelves_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717013/asfszgxmd7mnbjwggicl.jpg')
product_62.image.attach(io: shelves_pic_2, filename: 'shelves_pic_2.jpg', content_type: 'image/jpg')
product_62.save!

product_63 = Product.new( {
  name: "Modern Shelf",
  price: rand(1..60),
  sub_category_id: sub_category_16.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
shelves_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717013/asfszgxmd7mnbjwggicl.jpg')
product_63.image.attach(io: shelves_pic_3, filename: 'shelves_pic_3.jpg', content_type: 'image/jpg')
product_63.save!

product_64 = Product.new( {
  name: "Labyrinth Shelf",
  price: rand(1..60),
  sub_category_id: sub_category_16.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
shelves_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717013/asfszgxmd7mnbjwggicl.jpg')
product_64.image.attach(io: shelves_pic_4, filename: 'shelves_pic_4.jpg', content_type: 'image/jpg')
product_64.save!


# ### for: "Storage"  ID: 17

product_65 = Product.new( {
  name: "Big Wooden Library",
  price: rand(1..60),
  sub_category_id: sub_category_17.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
storages_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717025/wdrwqisauqvde1ciir8c.jpg')
product_65.image.attach(io: storages_pic_1, filename: 'storages_pic_1.jpg', content_type: 'image/jpg')
product_65.save!

product_66 = Product.new( {
  name: "Cupboard",
  price: rand(1..60),
  sub_category_id: sub_category_17.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
storages_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717025/wdrwqisauqvde1ciir8c.jpg')
product_66.image.attach(io: storages_pic_2, filename: 'storages_pic_2.jpg', content_type: 'image/jpg')
product_66.save!

product_67 = Product.new( {
  name: "Antique Cupboard",
  price: rand(1..60),
  sub_category_id: sub_category_17.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
storages_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717025/wdrwqisauqvde1ciir8c.jpg')
product_67.image.attach(io: storages_pic_3, filename: 'storages_pic_3.jpg', content_type: 'image/jpg')
product_67.save!

product_68 = Product.new( {
  name: "Library",
  price: rand(1..60),
  sub_category_id: sub_category_17.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
storages_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717025/wdrwqisauqvde1ciir8c.jpg')
product_68.image.attach(io: storages_pic_4, filename: 'storages_pic_4.jpg', content_type: 'image/jpg')
product_68.save!


# ### for: "Wardrobes"  ID: 18

product_69 = Product.new( {
  name: "Bedroom Wardrobe",
  price: rand(1..60),
  sub_category_id: sub_category_18.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
wardrobes_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717038/qrn9rybbxlammaqpcscc.jpg')
product_69.image.attach(io: wardrobes_pic_1, filename: 'wardrobes_pic_1.jpg', content_type: 'image/jpg')
product_69.save!

product_70 = Product.new( {
  name: "Big Wardrobe",
  price: rand(1..60),
  sub_category_id: sub_category_18.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
wardrobes_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717038/qrn9rybbxlammaqpcscc.jpg')
product_70.image.attach(io: wardrobes_pic_2, filename: 'wardrobes_pic_2.jpg', content_type: 'image/jpg')
product_70.save!

product_71 = Product.new( {
  name: "Small Wardrobe",
  price: rand(1..60),
  sub_category_id: sub_category_18.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
wardrobes_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717038/qrn9rybbxlammaqpcscc.jpg')
product_71.image.attach(io: wardrobes_pic_3, filename: 'wardrobes_pic_3.jpg', content_type: 'image/jpg')
product_71.save!

product_72 = Product.new( {
  name: "Old Dusty Wardrobe",
  price: rand(1..60),
  sub_category_id: sub_category_18.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
wardrobes_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717038/qrn9rybbxlammaqpcscc.jpg')
product_72.image.attach(io: wardrobes_pic_4, filename: 'wardrobes_pic_4.jpg', content_type: 'image/jpg')
product_72.save!


# ### for: "Others"  ID: 19

product_73 = Product.new( {
  name: "Wooden Box",
  price: rand(1..60),
  sub_category_id: sub_category_19.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
storage_boxes_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717056/shwv4fc9jmnt2y9xcoji.jpg')
product_73.image.attach(io: storage_boxes_pic_1, filename: 'storage_boxes_pic_1.jpg', content_type: 'image/jpg')
product_73.save!

product_74 = Product.new( {
  name: "Metallic Box",
  price: rand(1..60),
  sub_category_id: sub_category_19.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
storage_boxes_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717056/shwv4fc9jmnt2y9xcoji.jpg')
product_74.image.attach(io: storage_boxes_pic_2, filename: 'storage_boxes_pic_2.jpg', content_type: 'image/jpg')
product_74.save!

product_75 = Product.new( {
  name: "Garden Box",
  price: rand(1..60),
  sub_category_id: sub_category_19.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
storage_boxes_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717056/shwv4fc9jmnt2y9xcoji.jpg')
product_75.image.attach(io: storage_boxes_pic_3, filename: 'storage_boxes_pic_3.jpg', content_type: 'image/jpg')
product_75.save!

product_76 = Product.new( {
  name: "Outdoor Table",
  price: rand(1..60),
  sub_category_id: sub_category_19.id,
  category_id: category_3.id,
  address: "106 avenue de l'Université, Ixelles"
} )
storage_boxes_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717056/shwv4fc9jmnt2y9xcoji.jpg')
product_76.image.attach(io: storage_boxes_pic_4, filename: 'storage_boxes_pic_4.jpg', content_type: 'image/jpg')
product_76.save!

puts "... 1/2 of the products have been created ..."

# #________________________________________________________

# ## In: ART & DECORATION


# ### for: "Accessories"  ID: 20

product_77 = Product.new( {
  name: "Chandelier",
  price: rand(1..60),
  sub_category_id: sub_category_20.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
accessories_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717067/uncarmcdu24utwyjglju.jpg')
product_77.image.attach(io: accessories_pic_1, filename: 'accessories_pic_1.jpg', content_type: 'image/jpg')
product_77.save!

product_78 = Product.new( {
  name: "Nice Small Box",
  price: rand(1..60),
  sub_category_id: sub_category_20.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
accessories_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717067/uncarmcdu24utwyjglju.jpg')
product_78.image.attach(io: accessories_pic_2, filename: 'accessories_pic_2.jpg', content_type: 'image/jpg')
product_78.save!

product_79 = Product.new( {
  name: "Antique Plates",
  price: rand(1..60),
  sub_category_id: sub_category_20.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
accessories_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717067/uncarmcdu24utwyjglju.jpg')
product_79.image.attach(io: accessories_pic_3, filename: 'accessories_pic_3.jpg', content_type: 'image/jpg')
product_79.save!

product_80 = Product.new( {
  name: "Presse Papier",
  price: rand(1..60),
  sub_category_id: sub_category_20.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
accessories_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717067/uncarmcdu24utwyjglju.jpg')
product_80.image.attach(io: accessories_pic_4, filename: 'accessories_pic_4.jpg', content_type: 'image/jpg')
product_80.save!


# ### for: "Carpets"  ID: 21

product_81 = Product.new( {
  name: "Indian Carpet",
  price: rand(1..60),
  sub_category_id: sub_category_21.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
carpets_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717080/htcjk9ww1b6nkmkv61f0.jpg')
product_81.image.attach(io: carpets_pic_1, filename: 'carpets_pic_1.jpg', content_type: 'image/jpg')
product_81.save!

product_82 = Product.new( {
  name: "Italian Carpet",
  price: rand(1..60),
  sub_category_id: sub_category_21.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
carpets_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717080/htcjk9ww1b6nkmkv61f0.jpg')
product_82.image.attach(io: carpets_pic_2, filename: 'carpets_pic_2.jpg', content_type: 'image/jpg')
product_82.save!

product_83 = Product.new( {
  name: "Red and Green Carpet",
  price: rand(1..60),
  sub_category_id: sub_category_21.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
carpets_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717080/htcjk9ww1b6nkmkv61f0.jpg')
product_83.image.attach(io: carpets_pic_3, filename: 'carpets_pic_3.jpg', content_type: 'image/jpg')
product_83.save!

product_84 = Product.new( {
  name: "Black and White Carpet",
  price: rand(1..60),
  sub_category_id: sub_category_21.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
carpets_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717080/htcjk9ww1b6nkmkv61f0.jpg')
product_84.image.attach(io: carpets_pic_4, filename: 'carpets_pic_4.jpg', content_type: 'image/jpg')
product_84.save!


# ### for: "Mirrors"  ID: 22

product_85 = Product.new( {
  name: "Antique Mirror",
  price: rand(1..60),
  sub_category_id: sub_category_22.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
mirrors_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717088/zzv7xignyr3euhwn1g5u.jpg')
product_85.image.attach(io: mirrors_pic_1, filename: 'mirrors_pic_1.jpg', content_type: 'image/jpg')
product_85.save!

product_86 = Product.new( {
  name: "Modern Mirror",
  price: rand(1..60),
  sub_category_id: sub_category_22.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
mirrors_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717088/zzv7xignyr3euhwn1g5u.jpg')
product_86.image.attach(io: mirrors_pic_2, filename: 'mirrors_pic_2.jpg', content_type: 'image/jpg')
product_86.save!

product_87 = Product.new( {
  name: "Wooden Mirror",
  price: rand(1..60),
  sub_category_id: sub_category_22.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
mirrors_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717088/zzv7xignyr3euhwn1g5u.jpg')
product_87.image.attach(io: mirrors_pic_3, filename: 'mirrors_pic_3.jpg', content_type: 'image/jpg')
product_87.save!

product_88 = Product.new( {
  name: "Plain Mirror",
  price: rand(1..60),
  sub_category_id: sub_category_22.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
mirrors_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717088/zzv7xignyr3euhwn1g5u.jpg')
product_88.image.attach(io: mirrors_pic_4, filename: 'mirrors_pic_4.jpg', content_type: 'image/jpg')
product_88.save!


# ### for: "Paintings"  ID: 23

product_89 = Product.new( {
  name: "Picasso",
  price: rand(1..60),
  sub_category_id: sub_category_23.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
paintings_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717097/isji2p96ohmhgcv2ldbc.jpg')
product_89.image.attach(io: paintings_pic_1, filename: 'paintings_pic_1.jpg', content_type: 'image/jpg')
product_89.save!

product_90 = Product.new( {
  name: "Francis Picabia",
  price: rand(1..60),
  sub_category_id: sub_category_23.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
paintings_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717097/isji2p96ohmhgcv2ldbc.jpg')
product_90.image.attach(io: paintings_pic_2, filename: 'paintings_pic_2.jpg', content_type: 'image/jpg')
product_90.save!

product_91 = Product.new( {
  name: "Turner",
  price: rand(1..60),
  sub_category_id: sub_category_23.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
paintings_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717097/isji2p96ohmhgcv2ldbc.jpg')
product_91.image.attach(io: paintings_pic_3, filename: 'paintings_pic_3.jpg', content_type: 'image/jpg')
product_91.save!

product_92 = Product.new( {
  name: "Kandinsky",
  price: rand(1..60),
  sub_category_id: sub_category_23.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
paintings_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717097/isji2p96ohmhgcv2ldbc.jpg')
product_92.image.attach(io: paintings_pic_4, filename: 'paintings_pic_4.jpg', content_type: 'image/jpg')
product_92.save!


# ### for: "Plants"  ID: 24

product_93 = Product.new( {
  name: "Geranium",
  price: rand(1..60),
  sub_category_id: sub_category_24.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
plants_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717106/clcbj9lcuk9blirv87qu.jpg')
product_93.image.attach(io: plants_pic_1, filename: 'plants_pic_1.jpg', content_type: 'image/jpg')
product_93.save!

product_94 = Product.new( {
  name: "Aloe Vera",
  price: rand(1..60),
  sub_category_id: sub_category_24.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
plants_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717106/clcbj9lcuk9blirv87qu.jpg')
product_94.image.attach(io: plants_pic_2, filename: 'plants_pic_2.jpg', content_type: 'image/jpg')
product_94.save!

product_95 = Product.new( {
  name: "Joli Vase",
  price: rand(1..60),
  sub_category_id: sub_category_24.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
plants_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717106/clcbj9lcuk9blirv87qu.jpg')
product_95.image.attach(io: plants_pic_3, filename: 'plants_pic_3.jpg', content_type: 'image/jpg')
product_95.save!

product_96 = Product.new( {
  name: "Cactus",
  price: rand(1..60),
  sub_category_id: sub_category_24.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
plants_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717106/clcbj9lcuk9blirv87qu.jpg')
product_96.image.attach(io: plants_pic_4, filename: 'plants_pic_4.jpg', content_type: 'image/jpg')
product_96.save!


# ### for: "Others"  ID: 25

product_97 = Product.new( {
  name: "Outdoor Decorations",
  price: rand(1..60),
  sub_category_id: sub_category_25.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
statues_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717114/iink07gm1etwg9lpyfqo.jpg')
product_97.image.attach(io: statues_pic_1, filename: 'statues_pic_1.jpg', content_type: 'image/jpg')
product_97.save!

product_98 = Product.new( {
  name: "Random Things",
  price: rand(1..60),
  sub_category_id: sub_category_25.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
statues_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717114/iink07gm1etwg9lpyfqo.jpg')
product_98.image.attach(io: statues_pic_2, filename: 'statues_pic_2.jpg', content_type: 'image/jpg')
product_98.save!

product_99 = Product.new( {
  name: "Other Random Things",
  price: rand(1..60),
  sub_category_id: sub_category_25.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
statues_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717114/iink07gm1etwg9lpyfqo.jpg')
product_99.image.attach(io: statues_pic_3, filename: 'statues_pic_3.jpg', content_type: 'image/jpg')
product_99.save!

product_100 = Product.new( {
  name: "Nice Frame",
  price: rand(1..60),
  sub_category_id: sub_category_25.id,
  category_id: category_4.id,
  address: "106 avenue de l'Université, Ixelles"
} )
statues_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717114/iink07gm1etwg9lpyfqo.jpg')
product_100.image.attach(io: statues_pic_4, filename: 'statues_pic_4.jpg', content_type: 'image/jpg')
product_100.save!

# #________________________________________________________

# ## In: BOOKS & LEISURE


# ### for: "Board Games"  ID: 26

product_101 = Product.new( {
  name: "Monopoly",
  price: rand(1..60),
  sub_category_id: sub_category_26.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
board_games_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717126/jsz9brm2uvb0yv6trucl.jpg')
product_101.image.attach(io: board_games_pic_1, filename: 'board_games_pic_1.jpg', content_type: 'image/jpg')
product_101.save!

product_102 = Product.new( {
  name: "Hotels",
  price: rand(1..60),
  sub_category_id: sub_category_26.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
board_games_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717126/jsz9brm2uvb0yv6trucl.jpg')
product_102.image.attach(io: board_games_pic_2, filename: 'board_games_pic_2.jpg', content_type: 'image/jpg')
product_102.save!

product_103 = Product.new( {
  name: "Labyrinth",
  price: rand(1..60),
  sub_category_id: sub_category_26.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
board_games_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717126/jsz9brm2uvb0yv6trucl.jpg')
product_103.image.attach(io: board_games_pic_3, filename: 'board_games_pic_3.jpg', content_type: 'image/jpg')
product_103.save!

product_104 = Product.new( {
  name: "Cluedo",
  price: rand(1..60),
  sub_category_id: sub_category_26.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
board_games_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717126/jsz9brm2uvb0yv6trucl.jpg')
product_104.image.attach(io: board_games_pic_4, filename: 'board_games_pic_4.jpg', content_type: 'image/jpg')
product_104.save!


# ### for: "Books"  ID: 27

product_105 = Product.new( {
  name: "Loup Blanc",
  price: rand(1..60),
  sub_category_id: sub_category_27.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
books_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717138/sxfsqtyhrxuqqbn4zxzx.jpg')
product_105.image.attach(io: books_pic_1, filename: 'books_pic_1.jpg', content_type: 'image/jpg')
product_105.save!

product_106 = Product.new( {
  name: "Parmenion",
  price: rand(1..60),
  sub_category_id: sub_category_27.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
books_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717138/sxfsqtyhrxuqqbn4zxzx.jpg')
product_106.image.attach(io: books_pic_2, filename: 'books_pic_2.jpg', content_type: 'image/jpg')
product_106.save!

product_107 = Product.new( {
  name: "Ravage",
  price: rand(1..60),
  sub_category_id: sub_category_27.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
books_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717138/sxfsqtyhrxuqqbn4zxzx.jpg')
product_107.image.attach(io: books_pic_3, filename: 'books_pic_3.jpg', content_type: 'image/jpg')
product_107.save!

product_108 = Product.new( {
  name: "2O mille Lieues sous les Mers",
  price: rand(1..60),
  sub_category_id: sub_category_27.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
books_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717138/sxfsqtyhrxuqqbn4zxzx.jpg')
product_108.image.attach(io: books_pic_4, filename: 'books_pic_4.jpg', content_type: 'image/jpg')
product_108.save!


# ### for: "Comics"  ID: 28

product_109 = Product.new( {
  name: "Tintin",
  price: rand(1..60),
  sub_category_id: sub_category_28.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
comics_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717147/inibtxpm3uv2uqdcjjdx.jpg')
product_109.image.attach(io: comics_pic_1, filename: 'comics_pic_1.jpg', content_type: 'image/jpg')
product_109.save!

product_110 = Product.new( {
  name: "Asterix",
  price: rand(1..60),
  sub_category_id: sub_category_28.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
comics_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717147/inibtxpm3uv2uqdcjjdx.jpg')
product_110.image.attach(io: comics_pic_2, filename: 'comics_pic_2.jpg', content_type: 'image/jpg')
product_110.save!

product_111 = Product.new( {
  name: "Yoko Tsuno",
  price: rand(1..60),
  sub_category_id: sub_category_28.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
comics_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717147/inibtxpm3uv2uqdcjjdx.jpg')
product_111.image.attach(io: comics_pic_3, filename: 'comics_pic_3.jpg', content_type: 'image/jpg')
product_111.save!

product_112 = Product.new( {
  name: "Boule & Bil",
  price: rand(1..60),
  sub_category_id: sub_category_28.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
comics_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717147/inibtxpm3uv2uqdcjjdx.jpg')
product_112.image.attach(io: comics_pic_4, filename: 'comics_pic_4.jpg', content_type: 'image/jpg')
product_112.save!


puts "... 3/4 of the products have been created ..."


# ### for: "Lounge Games"  ID: 29

product_113 = Product.new( {
  name: "Darts",
  price: rand(1..60),
  sub_category_id: sub_category_29.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
lounge_games_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717157/mgsujkpfsbbafff1c7dp.jpg')
product_113.image.attach(io: lounge_games_pic_1, filename: 'lounge_games_pic_1.jpg', content_type: 'image/jpg')
product_113.save!

product_114 = Product.new( {
  name: "Small Pool Table",
  price: rand(1..60),
  sub_category_id: sub_category_29.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
lounge_games_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717157/mgsujkpfsbbafff1c7dp.jpg')
product_114.image.attach(io: lounge_games_pic_2, filename: 'lounge_games_pic_2.jpg', content_type: 'image/jpg')
product_114.save!

product_115 = Product.new( {
  name: "Chess",
  price: rand(1..60),
  sub_category_id: sub_category_29.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
lounge_games_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717157/mgsujkpfsbbafff1c7dp.jpg')
product_115.image.attach(io: lounge_games_pic_3, filename: 'lounge_games_pic_3.jpg', content_type: 'image/jpg')
product_115.save!

product_116 = Product.new( {
  name: "Random Games Box",
  price: rand(1..60),
  sub_category_id: sub_category_29.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
lounge_games_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717157/mgsujkpfsbbafff1c7dp.jpg')
product_116.image.attach(io: lounge_games_pic_4, filename: 'lounge_games_pic_4.jpg', content_type: 'image/jpg')
product_116.save!


# ### for: "Video Games"  ID: 30

product_117 = Product.new( {
  name: "Fifa 21",
  price: rand(1..60),
  sub_category_id: sub_category_30.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
video_games_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717167/aaaflkb5iqgwpp3kgouc.jpg')
product_117.image.attach(io: video_games_pic_1, filename: 'video_games_pic_1.jpg', content_type: 'image/jpg')
product_117.save!

product_118 = Product.new( {
  name: "Fortnite",
  price: rand(1..60),
  sub_category_id: sub_category_30.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
video_games_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717167/aaaflkb5iqgwpp3kgouc.jpg')
product_118.image.attach(io: video_games_pic_2, filename: 'video_games_pic_2.jpg', content_type: 'image/jpg')
product_118.save!

product_119 = Product.new( {
  name: "Assassin's Creed",
  price: rand(1..60),
  sub_category_id: sub_category_30.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
video_games_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717167/aaaflkb5iqgwpp3kgouc.jpg')
product_119.image.attach(io: video_games_pic_3, filename: 'video_games_pic_3.jpg', content_type: 'image/jpg')
product_119.save!

product_120 = Product.new( {
  name: "Fable III",
  price: rand(1..60),
  sub_category_id: sub_category_30.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
video_games_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717167/aaaflkb5iqgwpp3kgouc.jpg')
product_120.image.attach(io: video_games_pic_4, filename: 'video_games_pic_4.jpg', content_type: 'image/jpg')
product_120.save!


# ### for: "Others"  ID: 31

product_121 = Product.new( {
  name: "Some interesting stuffs",
  price: rand(1..60),
  sub_category_id: sub_category_31.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
football_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717174/jub1hubz7eweajfnvdlc.jpg')
product_121.image.attach(io: football_pic_1, filename: 'football_pic_1.jpg', content_type: 'image/jpg')
product_121.save!

product_122 = Product.new( {
  name: "Card Games",
  price: rand(1..60),
  sub_category_id: sub_category_31.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
football_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717174/jub1hubz7eweajfnvdlc.jpg')
product_122.image.attach(io: football_pic_2, filename: 'football_pic_2.jpg', content_type: 'image/jpg')
product_122.save!

product_123 = Product.new( {
  name: "Poker Games",
  price: rand(1..60),
  sub_category_id: sub_category_31.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
football_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717174/jub1hubz7eweajfnvdlc.jpg')
product_123.image.attach(io: football_pic_3, filename: 'football_pic_3.jpg', content_type: 'image/jpg')
product_123.save!

product_124 = Product.new( {
  name: "Adult Costumes",
  price: rand(1..60),
  sub_category_id: sub_category_31.id,
  category_id: category_5.id,
  address: "106 avenue de l'Université, Ixelles"
} )
football_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717174/jub1hubz7eweajfnvdlc.jpg')
product_124.image.attach(io: football_pic_4, filename: 'football_pic_4.jpg', content_type: 'image/jpg')
product_124.save!

# #________________________________________________________

# ## In: KIDS

# ### for: "Kid Beds"  ID: 32

product_125 = Product.new( {
  name: "Wooden Kid Bed",
  price: rand(1..60),
  sub_category_id: sub_category_32.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_beds_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717183/hggueesbumgaqeytgo5a.jpg')
product_125.image.attach(io: kid_beds_pic_1, filename: 'kid_beds_pic_1.jpg', content_type: 'image/jpg')
product_125.save!

product_126 = Product.new( {
  name: "Red Kid Bed",
  price: rand(1..60),
  sub_category_id: sub_category_32.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_beds_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717183/hggueesbumgaqeytgo5a.jpg')
product_126.image.attach(io: kid_beds_pic_2, filename: 'kid_beds_pic_2.jpg', content_type: 'image/jpg')
product_126.save!

product_127 = Product.new( {
  name: "Blue Kid Bed",
  price: rand(1..60),
  sub_category_id: sub_category_32.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_beds_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717183/hggueesbumgaqeytgo5a.jpg')
product_127.image.attach(io: kid_beds_pic_3, filename: 'kid_beds_pic_3.jpg', content_type: 'image/jpg')
product_127.save!

product_128 = Product.new( {
  name: "Green Kid Bed",
  price: rand(1..60),
  sub_category_id: sub_category_32.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_beds_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717183/hggueesbumgaqeytgo5a.jpg')
product_128.image.attach(io: kid_beds_pic_4, filename: 'kid_beds_pic_4.jpg', content_type: 'image/jpg')
product_128.save!


# ### for: "Kid Books"  ID: 33

product_129 = Product.new( {
  name: "Kid Book 1",
  price: rand(1..60),
  sub_category_id: sub_category_33.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_books_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717193/hhsmxt6orxpr1glhv2kf.jpg')
product_129.image.attach(io: kid_books_pic_1, filename: 'kid_books_pic_1.jpg', content_type: 'image/jpg')
product_129.save!

product_130 = Product.new( {
  name: "Les Teletubbies",
  price: rand(1..60),
  sub_category_id: sub_category_33.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_books_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717193/hhsmxt6orxpr1glhv2kf.jpg')
product_130.image.attach(io: kid_books_pic_2, filename: 'kid_books_pic_2.jpg', content_type: 'image/jpg')
product_130.save!

product_131 = Product.new( {
  name: "Oui-Oui",
  price: rand(1..60),
  sub_category_id: sub_category_33.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_books_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717193/hhsmxt6orxpr1glhv2kf.jpg')
product_131.image.attach(io: kid_books_pic_3, filename: 'kid_books_pic_3.jpg', content_type: 'image/jpg')
product_131.save!

product_132 = Product.new( {
  name: "Snoopy",
  price: rand(1..60),
  sub_category_id: sub_category_33.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_books_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717193/hhsmxt6orxpr1glhv2kf.jpg')
product_132.image.attach(io: kid_books_pic_4, filename: 'kid_books_pic_4.jpg', content_type: 'image/jpg')
product_132.save!


# ### for: "Kid Chairs"  ID: 34

product_133 = Product.new( {
  name: "Blue Kid Chair",
  price: rand(1..60),
  sub_category_id: sub_category_34.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717209/jjomj0d1biyysvbxdnpa.jpg')
product_133.image.attach(io: kid_chairs_pic_1, filename: 'kid_chairs_pic_1.jpg', content_type: 'image/jpg')
product_133.save!

product_134 = Product.new( {
  name: "Rocking Kid Chair",
  price: rand(1..60),
  sub_category_id: sub_category_34.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717209/jjomj0d1biyysvbxdnpa.jpg')
product_134.image.attach(io: kid_chairs_pic_2, filename: 'kid_chairs_pic_2.jpg', content_type: 'image/jpg')
product_134.save!

product_135 = Product.new( {
  name: "Baby Chair",
  price: rand(1..60),
  sub_category_id: sub_category_34.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717209/jjomj0d1biyysvbxdnpa.jpg')
product_135.image.attach(io: kid_chairs_pic_3, filename: 'kid_chairs_pic_3.jpg', content_type: 'image/jpg')
product_135.save!

product_136 = Product.new( {
  name: "Red Kid Chair",
  price: rand(1..60),
  sub_category_id: sub_category_34.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717209/jjomj0d1biyysvbxdnpa.jpg')
product_136.image.attach(io: kid_chairs_pic_4, filename: 'kid_chairs_pic_4.jpg', content_type: 'image/jpg')
product_136.save!


# ### for: "Kid Furniture"  ID: 35

product_137 = Product.new( {
  name: "Changing Table",
  price: rand(1..60),
  sub_category_id: sub_category_35.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_furnitures_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717222/ehba35hbampwxmrj2b3u.jpg')
product_137.image.attach(io: kid_furnitures_pic_1, filename: 'kid_furnitures_pic_1.jpg', content_type: 'image/jpg')
product_137.save!

product_138 = Product.new( {
  name: "Blue Changing Table",
  price: rand(1..60),
  sub_category_id: sub_category_35.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_furnitures_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717222/ehba35hbampwxmrj2b3u.jpg')
product_138.image.attach(io: kid_furnitures_pic_2, filename: 'kid_furnitures_pic_2.jpg', content_type: 'image/jpg')
product_138.save!

product_139 = Product.new( {
  name: "Small Desk",
  price: rand(1..60),
  sub_category_id: sub_category_35.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_furnitures_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717222/ehba35hbampwxmrj2b3u.jpg')
product_139.image.attach(io: kid_furnitures_pic_3, filename: 'kid_furnitures_pic_3.jpg', content_type: 'image/jpg')
product_139.save!

product_140 = Product.new( {
  name: "Red Kid Desk",
  price: rand(1..60),
  sub_category_id: sub_category_35.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_furnitures_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717222/ehba35hbampwxmrj2b3u.jpg')
product_140.image.attach(io: kid_furnitures_pic_4, filename: 'kid_furnitures_pic_4.jpg', content_type: 'image/jpg')
product_140.save!


# ### for: "Kid Toys"  ID: 36

product_141 = Product.new( {
  name: "Action Man",
  price: rand(1..60),
  sub_category_id: sub_category_36.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_toys_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717235/bsrb98ujmjxkpesrpwcz.jpg')
product_141.image.attach(io: kid_toys_pic_1, filename: 'kid_toys_pic_1.jpg', content_type: 'image/jpg')
product_141.save!

product_142 = Product.new( {
  name: "Barbie",
  price: rand(1..60),
  sub_category_id: sub_category_36.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_toys_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717235/bsrb98ujmjxkpesrpwcz.jpg')
product_142.image.attach(io: kid_toys_pic_2, filename: 'kid_toys_pic_2.jpg', content_type: 'image/jpg')
product_142.save!

product_143 = Product.new( {
  name: "Legos",
  price: rand(1..60),
  sub_category_id: sub_category_36.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_toys_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717235/bsrb98ujmjxkpesrpwcz.jpg')
product_143.image.attach(io: kid_toys_pic_3, filename: 'kid_toys_pic_3.jpg', content_type: 'image/jpg')
product_143.save!

product_144 = Product.new( {
  name: "Playmobile",
  price: rand(1..60),
  sub_category_id: sub_category_36.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
kid_toys_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717235/bsrb98ujmjxkpesrpwcz.jpg')
product_144.image.attach(io: kid_toys_pic_4, filename: 'kid_toys_pic_4.jpg', content_type: 'image/jpg')
product_144.save!


# ### for: "Others"  ID: 37

product_145 = Product.new( {
  name: "Biberons",
  price: rand(1..60),
  sub_category_id: sub_category_37.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
teddy_bears_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717249/kj5p19by75kfx24qbhew.jpg')
product_145.image.attach(io: teddy_bears_pic_1, filename: 'teddy_bears_pic_1.jpg', content_type: 'image/jpg')
product_145.save!

product_146 = Product.new( {
  name: "Peluches",
  price: rand(1..60),
  sub_category_id: sub_category_37.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
teddy_bears_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717249/kj5p19by75kfx24qbhew.jpg')
product_146.image.attach(io: teddy_bears_pic_2, filename: 'teddy_bears_pic_2.jpg', content_type: 'image/jpg')
product_146.save!

product_147 = Product.new( {
  name: "Kid Clothes",
  price: rand(1..60),
  sub_category_id: sub_category_37.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
teddy_bears_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717249/kj5p19by75kfx24qbhew.jpg')
product_147.image.attach(io: teddy_bears_pic_3, filename: 'teddy_bears_pic_3.jpg', content_type: 'image/jpg')
product_147.save!

product_148 = Product.new( {
  name: "Tetine",
  price: rand(1..60),
  sub_category_id: sub_category_37.id,
  category_id: category_6.id,
  address: "106 avenue de l'Université, Ixelles"
} )
teddy_bears_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591717249/kj5p19by75kfx24qbhew.jpg')
product_148.image.attach(io: teddy_bears_pic_4, filename: 'teddy_bears_pic_4.jpg', content_type: 'image/jpg')
product_148.save!


puts " "

puts "DATABASE SUCCESSFULLY SEEDED."

puts " "

puts "Total number of categories: #{Category.all.count}"
puts "Total number of sub-categories: #{SubCategory.all.count}"
puts "Total number of products: #{Product.all.count}"

puts " "

puts "┐(・。・┐) ♪ "

puts " "

puts "( ͡ ͜ ʖ ͡ )"

puts " "

puts "( ͡• ͜ʖ ͡• )"

puts " "

puts "┏(＾0＾)┛┗(＾0＾)┓"

puts " "


# puts "Product names: #{Product.all.pluck("name")}"
# puts "Product1: #{product_1.name} price: #{product_1.price.round(2)}"
# puts "Product2: #{product_2.name} price: #{product_2.price.round(2)}"
# puts "Product3: #{product_3.name} price: #{product_3.price.round(2)}"
# puts "Product4: #{product_4.name} price: #{product_4.price.round(2)}"
# puts "Product5: #{product_5.name} price: #{product_5.price.round(2)}"





