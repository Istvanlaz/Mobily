# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

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
  category_id: category_1.id
  # user_id: user_1.id
} )
armchairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_1.image.attach(io: armchairs_pic_1, filename: 'armchair1.jpg', content_type: 'image/jpg')
product_1.save!

product_2 = Product.new( {
  name: "Napoleon Style",
  price: rand(1..60),
  sub_category_id: sub_category_1.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
armchairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_2.image.attach(io: armchairs_pic_2, filename: 'armchair2.jpg', content_type: 'image/jpg')
product_2.save!

product_3 = Product.new( {
  name: "Big Fudge",
  price: rand(1..60),
  sub_category_id: sub_category_1.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
armchairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_3.image.attach(io: armchairs_pic_3, filename: 'armchair3.jpg', content_type: 'image/jpg')
product_3.save!

product_4 = Product.new( {
  name: "Rocking Chair",
  price: rand(1..60),
  sub_category_id: sub_category_1.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
armchairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716841/qpb4hdq2k5vrlz4fbv83.jpg')
product_4.image.attach(io: armchairs_pic_4, filename: 'armchairs4.jpg', content_type: 'image/jpg')
product_4.save!


# ### for: "Benches"   ID: 2

product_5 = Product.new( {
  name: "Outdoor Bench",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
benches_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_5.image.attach(io: benches_pic_1, filename: 'bench1.jpg', content_type: 'image/jpg')
product_5.save!

product_6 = Product.new( {
  name: "Kitchen Bench",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
benches_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_6.image.attach(io: benches_pic_2, filename: 'bench2.jpg', content_type: 'image/jpg')
product_6.save!

product_7 = Product.new( {
  name: "Entry Bench",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
benches_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_7.image.attach(io: benches_pic_3, filename: 'bench3.jpg', content_type: 'image/jpg')
product_7.save!

product_8 = Product.new( {
  name: "Bench with Storage",
  price: rand(1..60),
  sub_category_id: sub_category_2.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
benches_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
product_8.image.attach(io: benches_pic_4, filename: 'bench4.jpg', content_type: 'image/jpg')
product_8.save!


# ### for: "Chairs"   ID: 3

product_9 = Product.new( {
  name: "Kitchen Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_9.image.attach(io: chairs_pic_1, filename: 'chair1.jpg', content_type: 'image/jpg')
product_9.save!

product_10 = Product.new( {
  name: "Wooden Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_10.image.attach(io: chairs_pic_2, filename: 'chair2.jpg', content_type: 'image/jpg')
product_10.save!

product_11 = Product.new( {
  name: "Metal Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_11.image.attach(io: chairs_pic_3, filename: 'chair3.jpg', content_type: 'image/jpg')
product_11.save!

product_12 = Product.new( {
  name: "Plastic Chair",
  price: rand(1..60),
  sub_category_id: sub_category_3.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716862/uianpylbscgbokscv8h4.jpg')
product_12.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
product_12.save!


# ### for: "Desk Chairs"  ID: 4

product_13 = Product.new( {
  name: "Black Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
desk_chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_13.image.attach(io: desk_chairs_pic_1, filename: 'desk_chairs1.jpg', content_type: 'image/jpg')
product_13.save!

product_14 = Product.new( {
  name: "White Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
desk_chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_14.image.attach(io: desk_chairs_pic_2, filename: 'desk_chairs2.jpg', content_type: 'image/jpg')
product_14.save!

product_15 = Product.new( {
  name: "Blue Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
desk_chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_15.image.attach(io: desk_chairs_pic_3, filename: 'desk_chairs3.jpg', content_type: 'image/jpg')
product_15.save!

product_16 = Product.new( {
  name: "Classic Desk Chair",
  price: rand(1..60),
  sub_category_id: sub_category_4.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
desk_chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716876/j9ljaues28mbd9edmtuh.jpg')
product_16.image.attach(io: desk_chairs_pic_4, filename: 'desk_chairs4.jpg', content_type: 'image/jpg')
product_16.save!


# ### for: "Sofas"  ID: 5

product_17 = Product.new( {
  name: "Red Sofa",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
sofas_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_17.image.attach(io: sofas_pic_1, filename: 'sofas1.jpg', content_type: 'image/jpg')
product_17.save!

product_18 = Product.new( {
  name: "Sofa 2 Places",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
sofas_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_18.image.attach(io: sofas_pic_2, filename: 'sofas2.jpg', content_type: 'image/jpg')
product_18.save!

product_19 = Product.new( {
  name: "Sofa 3 Places",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
sofas_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_19.image.attach(io: sofas_pic_3, filename: 'sofas3.jpg', content_type: 'image/jpg')
product_19.save!

product_20 = Product.new( {
  name: "Antique Sofa",
  price: rand(1..60),
  sub_category_id: sub_category_5.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
sofas_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716816/ww1hlznsqxsgbml0ktsj.jpg')
product_20.image.attach(io: sofas_pic_4, filename: 'sofas4.jpg', content_type: 'image/jpg')
product_20.save!


# ### for: "Others"  ID: 6

product_21 = Product.new( {
  name: "Kitchen Stools",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
other_chairs_pic_1 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_21.image.attach(io: other_chairs_pic_1, filename: 'other_chairs1.jpg', content_type: 'image/jpg')
product_21.save!

product_22 = Product.new( {
  name: "Red Poof",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
other_chairs_pic_2 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_22.image.attach(io: other_chairs_pic_2, filename: 'other_chairs2.jpg', content_type: 'image/jpg')
product_22.save!

product_23 = Product.new( {
  name: "3 Garden Transat",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
other_chairs_pic_3 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_23.image.attach(io: other_chairs_pic_3, filename: 'other_chairs3.jpg', content_type: 'image/jpg')
product_23.save!

product_24 = Product.new( {
  name: "Big Poof",
  price: rand(1..60),
  sub_category_id: sub_category_6.id,
  category_id: category_1.id
  # user_id: user_1.id
} )
other_chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716888/ws5fv9crwuj74hcxp0wo.jpg')
product_24.image.attach(io: other_chairs_pic_4, filename: 'other_chairs4.jpg', content_type: 'image/jpg')
product_24.save!

# #________________________________________________________

# ## In: LIGHTS


# ### for: "Chandelier"  ID: 7

# product_25 = Product.new( {
#   name: "Small Chandelier",
#   price: rand(1..60),
#   sub_category_id: sub_category_7.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_25.save!

# product_26 = Product.new( {
#   name: "Big Chandelier",
#   price: rand(1..60),
#   sub_category_id: sub_category_7.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_26.save!

# product_27 = Product.new( {
#   name: "Red Chandelier",
#   price: rand(1..60),
#   sub_category_id: sub_category_7.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_27.save!

# product_28 = Product.new( {
#   name: "Golden Chandelier",
#   price: rand(1..60),
#   sub_category_id: sub_category_7.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_28.save!


# ### for: "Floor Lamps"  ID: 8

# product_29 = Product.new( {
#   name: "Black Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_8.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_29.save!

# product_30 = Product.new( {
#   name: "Set of two Metallic Lamps",
#   price: rand(1..60),
#   sub_category_id: sub_category_8.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_30.save!

# product_31 = Product.new( {
#   name: "Red Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_8.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_31.save!

# product_32 = Product.new( {
#   name: "Brown Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_8.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_32.save!


# ### for: "Hanging Lamps"  ID: 9

# product_33 = Product.new( {
#   name: "Red Hanging Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_9.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_33.save!

# product_34 = Product.new( {
#   name: "Black Hanging Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_9.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_34.save!

# product_34 = Product.new( {
#   name: "Green Hanging Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_9.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_34.save!

# product_35 = Product.new( {
#   name: "Old Hanging Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_9.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_35.save!


# ### for: "Lampshades"  ID: 10

# product_36 = Product.new( {
#   name: "Yellow Lampshade",
#   price: rand(1..60),
#   sub_category_id: sub_category_10.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_36.save!

# product_37 = Product.new( {
#   name: "Old Lampshade",
#   price: rand(1..60),
#   sub_category_id: sub_category_10.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_37.save!

# product_38 = Product.new( {
#   name: "Modern Lampshade",
#   price: rand(1..60),
#   sub_category_id: sub_category_10.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_38.save!

# product_39 = Product.new( {
#   name: "Artistic Lampshade",
#   price: rand(1..60),
#   sub_category_id: sub_category_10.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_39.save!


# ### for: "Reading Lamps"  ID: 11

# product_40 = Product.new( {
#   name: "Bedside Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_11.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_40.save!

# product_41 = Product.new( {
#   name: "Table Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_11.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_41.save!

# product_43 = Product.new( {
#   name: "Reading Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_11.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_43.save!

# product_44 = Product.new( {
#   name: "Small Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_11.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_44.save!


# ### for: "Others"  ID: 12

# product_45 = Product.new( {
#   name: "Big Candles",
#   price: rand(1..60),
#   sub_category_id: sub_category_12.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_45.save!

# product_46 = Product.new( {
#   name: "Small Candles",
#   price: rand(1..60),
#   sub_category_id: sub_category_12.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_46.save!

# product_47 = Product.new( {
#   name: "Outdoor Lamps",
#   price: rand(1..60),
#   sub_category_id: sub_category_12.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_47.save!

# product_48 = Product.new( {
#   name: "Outdoor Green Lamp",
#   price: rand(1..60),
#   sub_category_id: sub_category_12.id,
#   category_id: category_2.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_48.save!
# #________________________________________________________

# ## In: FURNITURE


# ### for: "Beds"  ID: 13

# product_49 = Product.new( {
#   name: "Bed 2 places",
#   price: rand(1..60),
#   sub_category_id: sub_category_13.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_49.save!

# product_50 = Product.new( {
#   name: "Queen-size Bed",
#   price: rand(1..60),
#   sub_category_id: sub_category_13.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_50.save!

# product_51 = Product.new( {
#   name: "King-size Bed",
#   price: rand(1..60),
#   sub_category_id: sub_category_13.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_51.save!

# product_52 = Product.new( {
#   name: "Single Bed",
#   price: rand(1..60),
#   sub_category_id: sub_category_13.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_52.save!


# ### for: "Desks"  ID: 14

# product_53 = Product.new( {
#   name: "Red Desk",
#   price: rand(1..60),
#   sub_category_id: sub_category_14.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_53.save!

# product_54 = Product.new( {
#   name: "Small Desk",
#   price: rand(1..60),
#   sub_category_id: sub_category_14.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_54.save!

# product_55 = Product.new( {
#   name: "Big Old Black Desk",
#   price: rand(1..60),
#   sub_category_id: sub_category_14.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_55.save!

# product_56 = Product.new( {
#   name: "Basic Desk",
#   price: rand(1..60),
#   sub_category_id: sub_category_14.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_56.save!


# ### for: "Tables"  ID: 15

# product_57 = Product.new( {
#   name: "6 Places Table",
#   price: rand(1..60),
#   sub_category_id: sub_category_15.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_57.save!

# product_58 = Product.new( {
#   name: "12 Places Table",
#   price: rand(1..60),
#   sub_category_id: sub_category_15.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_58.save!

# product_59 = Product.new( {
#   name: "Wooden Table",
#   price: rand(1..60),
#   sub_category_id: sub_category_15.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_59.save!

# product_60 = Product.new( {
#   name: "Black Metallic Table",
#   price: rand(1..60),
#   sub_category_id: sub_category_15.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_60.save!


# ### for: "Shelves"  ID: 16

# product_61 = Product.new( {
#   name: "Wooden Shelf",
#   price: rand(1..60),
#   sub_category_id: sub_category_16.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_61.save!

# product_62 = Product.new( {
#   name: "Metallic Shelf",
#   price: rand(1..60),
#   sub_category_id: sub_category_16.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_62.save!

# product_63 = Product.new( {
#   name: "Modern Shelf",
#   price: rand(1..60),
#   sub_category_id: sub_category_16.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_63.save!

# product_64 = Product.new( {
#   name: "Labyrinth Shelf",
#   price: rand(1..60),
#   sub_category_id: sub_category_16.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_64.save!


# ### for: "Storage"  ID: 17

# product_65 = Product.new( {
#   name: "Big Wooden Library",
#   price: rand(1..60),
#   sub_category_id: sub_category_17.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_65.save!

# product_66 = Product.new( {
#   name: "Cupboard",
#   price: rand(1..60),
#   sub_category_id: sub_category_17.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_66.save!

# product_67 = Product.new( {
#   name: "Antique Cupboard",
#   price: rand(1..60),
#   sub_category_id: sub_category_17.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_67.save!

# product_68 = Product.new( {
#   name: "Library",
#   price: rand(1..60),
#   sub_category_id: sub_category_17.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_68.save!


# ### for: "Wardrobes"  ID: 18

# product_69 = Product.new( {
#   name: "Bedroom Wardrobe",
#   price: rand(1..60),
#   sub_category_id: sub_category_18.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_69.save!

# product_70 = Product.new( {
#   name: "Big Wardrobe",
#   price: rand(1..60),
#   sub_category_id: sub_category_18.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_70.save!

# product_71 = Product.new( {
#   name: "Small Wardrobe",
#   price: rand(1..60),
#   sub_category_id: sub_category_18.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_71.save!

# product_72 = Product.new( {
#   name: "Old Dusty Wardrobe",
#   price: rand(1..60),
#   sub_category_id: sub_category_18.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_72.save!


# ### for: "Others"  ID: 19

# product_73 = Product.new( {
#   name: "Wooden Box",
#   price: rand(1..60),
#   sub_category_id: sub_category_19.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_73.save!

# product_74 = Product.new( {
#   name: "Metallic Box",
#   price: rand(1..60),
#   sub_category_id: sub_category_19.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_74.save!

# product_75 = Product.new( {
#   name: "Garden Box",
#   price: rand(1..60),
#   sub_category_id: sub_category_19.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_75.save!

# product_76 = Product.new( {
#   name: "Outdoor Table",
#   price: rand(1..60),
#   sub_category_id: sub_category_19.id,
#   category_id: category_3.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_76.save!
# #________________________________________________________

# ## In: ART & DECORATION


# ### for: "Accessories"  ID: 20

# product_77 = Product.new( {
#   name: "Chandelier",
#   price: rand(1..60),
#   sub_category_id: sub_category_20.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_77.save!

# product_78 = Product.new( {
#   name: "Nice Small Box",
#   price: rand(1..60),
#   sub_category_id: sub_category_20.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_78.save!

# product_79 = Product.new( {
#   name: "Antique Plates",
#   price: rand(1..60),
#   sub_category_id: sub_category_20.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_79.save!

# product_80 = Product.new( {
#   name: "Presse Papier",
#   price: rand(1..60),
#   sub_category_id: sub_category_20.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_80.save!


# ### for: "Carpets"  ID: 21

# product_81 = Product.new( {
#   name: "Indian Carpet",
#   price: rand(1..60),
#   sub_category_id: sub_category_21.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_81.save!

# product_82 = Product.new( {
#   name: "Italian Carpet",
#   price: rand(1..60),
#   sub_category_id: sub_category_21.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_82.save!

# product_83 = Product.new( {
#   name: "Red and Green Carpet",
#   price: rand(1..60),
#   sub_category_id: sub_category_21.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_83.save!

# product_84 = Product.new( {
#   name: "Black and White Carpet",
#   price: rand(1..60),
#   sub_category_id: sub_category_21.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_84.save!


# ### for: "Mirrors"  ID: 22

# product_85 = Product.new( {
#   name: "Antique Mirror",
#   price: rand(1..60),
#   sub_category_id: sub_category_22.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_85.save!

# product_86 = Product.new( {
#   name: "Modern Mirror",
#   price: rand(1..60),
#   sub_category_id: sub_category_22.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_86.save!

# product_87 = Product.new( {
#   name: "Wooden Mirror",
#   price: rand(1..60),
#   sub_category_id: sub_category_22.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_87.save!

# product_88 = Product.new( {
#   name: "Plain Mirror",
#   price: rand(1..60),
#   sub_category_id: sub_category_22.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_88.save!


# ### for: "Paintings"  ID: 23

# product_89 = Product.new( {
#   name: "Picasso",
#   price: rand(1..60),
#   sub_category_id: sub_category_23.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_89.save!

# product_90 = Product.new( {
#   name: "Francis Picabia",
#   price: rand(1..60),
#   sub_category_id: sub_category_23.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_90.save!

# product_91 = Product.new( {
#   name: "Turner",
#   price: rand(1..60),
#   sub_category_id: sub_category_23.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_91.save!

# product_92 = Product.new( {
#   name: "Kandinsky",
#   price: rand(1..60),
#   sub_category_id: sub_category_23.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_92.save!


# ### for: "Plants"  ID: 24

# product_93 = Product.new( {
#   name: "Geranium",
#   price: rand(1..60),
#   sub_category_id: sub_category_24.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_93.save!

# product_94 = Product.new( {
#   name: "Aloe Vera",
#   price: rand(1..60),
#   sub_category_id: sub_category_24.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_94.save!

# product_95 = Product.new( {
#   name: "Joli Vase",
#   price: rand(1..60),
#   sub_category_id: sub_category_24.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_95.save!

# product_96 = Product.new( {
#   name: "Cactus",
#   price: rand(1..60),
#   sub_category_id: sub_category_24.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_96.save!


# ### for: "Others"  ID: 25

# product_97 = Product.new( {
#   name: "Outdoor Decorations",
#   price: rand(1..60),
#   sub_category_id: sub_category_25.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_97.save!

# product_98 = Product.new( {
#   name: "Random Things",
#   price: rand(1..60),
#   sub_category_id: sub_category_25.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_98.save!

# product_99 = Product.new( {
#   name: "Other Random Things",
#   price: rand(1..60),
#   sub_category_id: sub_category_25.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_99.save!

# product_100 = Product.new( {
#   name: "Nice Frame",
#   price: rand(1..60),
#   sub_category_id: sub_category_25.id,
#   category_id: category_4.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_100.save!
# #________________________________________________________

# ## In: BOOKS & LEISURE


# ### for: "Board Games"  ID: 26

# product_101 = Product.new( {
#   name: "Monopoly",
#   price: rand(1..60),
#   sub_category_id: sub_category_26.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_101.save!

# product_102 = Product.new( {
#   name: "Hotels",
#   price: rand(1..60),
#   sub_category_id: sub_category_26.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_102.save!

# product_103 = Product.new( {
#   name: "Labyrinth",
#   price: rand(1..60),
#   sub_category_id: sub_category_26.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_103.save!

# product_104 = Product.new( {
#   name: "Cluedo",
#   price: rand(1..60),
#   sub_category_id: sub_category_26.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_104.save!


# ### for: "Books"  ID: 27

# product_105 = Product.new( {
#   name: "Loup Blanc",
#   price: rand(1..60),
#   sub_category_id: sub_category_27.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_105.save!

# product_106 = Product.new( {
#   name: "Parmenion",
#   price: rand(1..60),
#   sub_category_id: sub_category_27.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_106.save!

# product_107 = Product.new( {
#   name: "Ravage",
#   price: rand(1..60),
#   sub_category_id: sub_category_27.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_107.save!

# product_108 = Product.new( {
#   name: "2O mille Lieues sous les Mers",
#   price: rand(1..60),
#   sub_category_id: sub_category_27.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_108.save!


# ### for: "Comics"  ID: 28

# product_109 = Product.new( {
#   name: "Tintin",
#   price: rand(1..60),
#   sub_category_id: sub_category_28.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_109.save!

# product_110 = Product.new( {
#   name: "Asterix",
#   price: rand(1..60),
#   sub_category_id: sub_category_28.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_110.save!

# product_111 = Product.new( {
#   name: "Yoko Tsuno",
#   price: rand(1..60),
#   sub_category_id: sub_category_28.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_111.save!

# product_112 = Product.new( {
#   name: "Boule & Bil",
#   price: rand(1..60),
#   sub_category_id: sub_category_28.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_112.save!


# ### for: "Lounge Games"  ID: 29

# product_113 = Product.new( {
#   name: "Darts",
#   price: rand(1..60),
#   sub_category_id: sub_category_29.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_113.save!

# product_114 = Product.new( {
#   name: "Small Pool Table",
#   price: rand(1..60),
#   sub_category_id: sub_category_29.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_114.save!

# product_115 = Product.new( {
#   name: "Chess",
#   price: rand(1..60),
#   sub_category_id: sub_category_29.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_115.save!

# product_116 = Product.new( {
#   name: "Random Games Box",
#   price: rand(1..60),
#   sub_category_id: sub_category_29.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_116.save!


# ### for: "Video Games"  ID: 30

# product_117 = Product.new( {
#   name: "Fifa 21",
#   price: rand(1..60),
#   sub_category_id: sub_category_30.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_117.save!

# product_118 = Product.new( {
#   name: "Fortnite",
#   price: rand(1..60),
#   sub_category_id: sub_category_30.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_118.save!

# product_119 = Product.new( {
#   name: "Assassin's Creed",
#   price: rand(1..60),
#   sub_category_id: sub_category_30.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_119.save!

# product_120 = Product.new( {
#   name: "Fable III",
#   price: rand(1..60),
#   sub_category_id: sub_category_30.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_120.save!


# ### for: "Others"  ID: 31

# product_121 = Product.new( {
#   name: "Some interesting stuffs",
#   price: rand(1..60),
#   sub_category_id: sub_category_31.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_121.save!

# product_122 = Product.new( {
#   name: "Card Games",
#   price: rand(1..60),
#   sub_category_id: sub_category_31.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_122.save!

# product_123 = Product.new( {
#   name: "Poker Games",
#   price: rand(1..60),
#   sub_category_id: sub_category_31.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_123.save!

# product_124 = Product.new( {
#   name: "Adult Costumes",
#   price: rand(1..60),
#   sub_category_id: sub_category_31.id,
#   category_id: category_5.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_124.save!
# #________________________________________________________

# ## In: KIDS

# ### for: "Kid Beds"  ID: 32

# product_125 = Product.new( {
#   name: "Wooden Kid Bed",
#   price: rand(1..60),
#   sub_category_id: sub_category_32.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_125.save!

# product_126 = Product.new( {
#   name: "Red Kid Bed",
#   price: rand(1..60),
#   sub_category_id: sub_category_32.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_126.save!

# product_127 = Product.new( {
#   name: "Blue Kid Bed",
#   price: rand(1..60),
#   sub_category_id: sub_category_32.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_127.save!

# product_128 = Product.new( {
#   name: "Green Kid Bed",
#   price: rand(1..60),
#   sub_category_id: sub_category_32.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_128.save!


# ### for: "Kid Books"  ID: 33

# product_129 = Product.new( {
#   name: "Kid Book 1",
#   price: rand(1..60),
#   sub_category_id: sub_category_33.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_129.save!

# product_130 = Product.new( {
#   name: "Les Teletubbies",
#   price: rand(1..60),
#   sub_category_id: sub_category_33.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_130.save!

# product_131 = Product.new( {
#   name: "Oui-Oui",
#   price: rand(1..60),
#   sub_category_id: sub_category_33.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_131.save!

# product_132 = Product.new( {
#   name: "Snoopy",
#   price: rand(1..60),
#   sub_category_id: sub_category_33.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_132.save!


# ### for: "Kid Chairs"  ID: 34

# product_133 = Product.new( {
#   name: "Blue Kid Chair",
#   price: rand(1..60),
#   sub_category_id: sub_category_34.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_133.save!

# product_134 = Product.new( {
#   name: "Rocking Kid Chair",
#   price: rand(1..60),
#   sub_category_id: sub_category_34.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_134.save!

# product_135 = Product.new( {
#   name: "Baby Chair",
#   price: rand(1..60),
#   sub_category_id: sub_category_34.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_135.save!

# product_136 = Product.new( {
#   name: "Red Kid Chair",
#   price: rand(1..60),
#   sub_category_id: sub_category_34.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_136.save!


# ### for: "Kid Furniture"  ID: 35

# product_137 = Product.new( {
#   name: "Changing Table",
#   price: rand(1..60),
#   sub_category_id: sub_category_35.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_137.save!

# product_138 = Product.new( {
#   name: "Blue Changing Table",
#   price: rand(1..60),
#   sub_category_id: sub_category_35.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_138.save!

# product_139 = Product.new( {
#   name: "Small Desk",
#   price: rand(1..60),
#   sub_category_id: sub_category_35.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_139.save!

# product_140 = Product.new( {
#   name: "Red Kid Desk",
#   price: rand(1..60),
#   sub_category_id: sub_category_35.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_140.save!


# ### for: "Kid Toys"  ID: 36

# product_141 = Product.new( {
#   name: "Action Man",
#   price: rand(1..60),
#   sub_category_id: sub_category_36.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_141.save!

# product_142 = Product.new( {
#   name: "Barbie",
#   price: rand(1..60),
#   sub_category_id: sub_category_36.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_142.save!

# product_143 = Product.new( {
#   name: "Legos",
#   price: rand(1..60),
#   sub_category_id: sub_category_36.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_143.save!

# product_144 = Product.new( {
#   name: "Playmobile",
#   price: rand(1..60),
#   sub_category_id: sub_category_36.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_144.save!


# ### for: "Others"  ID: 37

# product_145 = Product.new( {
#   name: "Biberons",
#   price: rand(1..60),
#   sub_category_id: sub_category_37.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_145.save!

# product_146 = Product.new( {
#   name: "Peluches",
#   price: rand(1..60),
#   sub_category_id: sub_category_37.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_146.save!

# product_147 = Product.new( {
#   name: "Kid Clothes",
#   price: rand(1..60),
#   sub_category_id: sub_category_37.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_147.save!

# product_148 = Product.new( {
#   name: "Tetine",
#   price: rand(1..60),
#   sub_category_id: sub_category_37.id,
#   category_id: category_6.id
#   # user_id: user_1.id
# } )
# chairs_pic_4 = URI.open('https://res.cloudinary.com/mobily/image/upload/v1591716850/dvtugrmos0mksygs69xv.jpg')
# product_1.image.attach(io: chairs_pic_4, filename: 'chairs4.jpg', content_type: 'image/jpg')
# product_148.save!




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





