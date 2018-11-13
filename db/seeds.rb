# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(name:"chipotle", address:"111", phone:"111", delivery:true, credit_card:true)
Restaurant.create(name:"chickfila", address:"222", phone:"333", delivery:true, credit_card:true)

User.create(first_name:"sarah", last_name:"pai", email:"111@gmail.com", password:"123", profile_picture:"url", user_name:"sarahpai")
User.create(first_name:"yu", last_name:"li", email:"222@gmail.com", password:"123", profile_picture:"url", user_name:"yuli")

Review.create(restaurant_id:1, user_id:1, title:"chipotle is goood", comment:"sooo goood", star:"5")
Review.create(restaurant_id:2, user_id:2, title:"chickfila is goood", comment:"sooo goood", star:"5")
