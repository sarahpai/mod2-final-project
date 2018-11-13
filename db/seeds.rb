# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Restaurant.create(name:"chipotle", address:"11 Broadway, New York, NY 10004", phone:"111", delivery:true, credit_card:true, longitude: nil, latitude: nil)
Restaurant.create(name:"chickfila", address:"22 Broadway, New York, NY 10004", phone:"333", delivery:true, credit_card:true, longitude: nil, latitude: nil)


# User.create(first_name: "sarah", last_name: "pai", email: "111@gmail.com", password_digest: "12335", profile_picture: "http://www.drawingcoach.com/image-files/xhtd_bunny_st5.gif.pagespeed.ic.Q5eg7QP9kx.png", user_name: "sarahpai")
# User.create(first_name: "yu", last_name: "li", email: "222@gmail.com", password_digest: "hello12", profile_picture: "https://assets1.cdn-mw.com/mw/images/article/art-wap-landing-mp-lg/cute-fl8uffy-bunnies-1981-e5df49ebaf25068889da8648e21702b4@1x.jpg", user_name: "yuli")
#
#
# Review.create(restaurant_id: 1, user_id: 1, title:"chipotle is goood", comment:"sooo goood", star:"5")
# Review.create(restaurant_id: 2, user_id: 2, title:"chickfila is goood", comment:"sooo goood", star:"5")
