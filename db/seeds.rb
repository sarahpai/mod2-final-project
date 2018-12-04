# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create(
    name: "Chef's Table at Brooklyn Fare",
    address: '431 W 37th St, New York, NY 10018',
    phone: '(718) 243-0050',
    delivery: false,
    credit_card: true,
    info: 'Japanese French, $$$$',
    description: 'Renowned, upscale 20-course tasting menu that fuses French & Japanese flavors requires reservations.',
    longitude: nil,
    latitude: nil
)

Restaurant.create(
    name: 'Peter Luger',
    address: '178 Broadway, Brooklyn, NY 11211',
    phone: '(718) 387-7400',
    delivery: true,
    credit_card: true,
    info: 'Steak House, $$$$',
    description: 'Cash only steak icon where old school waiters serve aged beef in a German beer hall setting.',
    longitude: nil,
    latitude: nil
)

Restaurant.create(
    name: 'Carbone',
    address: '181 Thompson St, New York, NY 10012',
    phone: '(212) 254-3000',
    delivery: true,
    credit_card: true,
    info: 'Italian Restaurant, $$$',
    description: 'High-end takes on red-sauce fare await at this A-lister Italian restaurant in a retro-glam space.',
    longitude: nil,
    latitude: nil
)

Restaurant.create(
    name: 'Uchu',
    address: '217 Eldridge St, New York, NY 10002',
    phone: '(212) 203-7634',
    delivery: true,
    credit_card: true,
    info: 'Sushi Restaurant, $$$$',
    description: 'Two tiny bars set the stage for prix fixe omakase sushi, Japanese tasting menus & spirits.',
    longitude: nil,
    latitude: nil
)

Restaurant.create(
    name: 'Root & Bone',
    address: '200 E 3rd St New York, NY 10009',
    phone: '(646)682-7080',
    delivery: true,
    credit_card: true,
    info: 'Southern Restaurant, $$',
    description: 'Elevated Southern fare, barrel-aged cocktails & craft beer in a small rustic space with a market.',
    longitude: nil,
    latitude: nil
)

Restaurant.create(
    name: 'Turntable Chicken Jazz',
    address: '20W 33rd St New York, NY 10001',
    phone: '(212)714-9700',
    delivery: true,
    credit_card: true,
    info: 'Chicken Restaurant, $$',
    description: 'Korean fried chicken, sides & beer towers in a buzzy space with a DJ spinning vintage vinyl.',
    longitude: nil,
    latitude: nil
)

Restaurant.create(
    name: 'Obao',
    address: '647 9th Ave New York, NY 10036',
    phone: '(212)245-8880',
    delivery: true,
    credit_card: true,
    info: 'Vietnamese, Thai, Asian, $$',
    description: "Obao NY is a Thai and Vietnamese restaurant located in the heart of Hell's Kitchen, New York City.",
    longitude: nil,
    latitude: nil
)

Restaurant.create(
    name: 'La Contena',
    address: '102 Norfolk St New York, NY 10002',
    phone: '(212)432 4180',
    delivery: true,
    credit_card: true,
    info: 'Mexican Restaurant, $$',
    description: 'Neighborhood place for Mexican food by a native chef-owner, plus mezcals & other agave spirits.',
    longitude: nil,
    latitude: nil
)

Photo.create(restaurant_id: 5, url: 'http://i65.tinypic.com/33tt54l.jpg')
Photo.create(restaurant_id: 5, url: 'http://i67.tinypic.com/2upakxe.jpg')
Photo.create(restaurant_id: 5, url: 'http://i65.tinypic.com/dm8idk.jpg')
Photo.create(restaurant_id: 5, url: 'http://i65.tinypic.com/33ljvp0.jpg')
Photo.create(restaurant_id: 5, url: 'http://i68.tinypic.com/21adahi.jpg')
Photo.create(restaurant_id: 5, url: 'http://i67.tinypic.com/30rwwtd.jpg')
Photo.create(restaurant_id: 5, url: 'http://i66.tinypic.com/2j3imoi.jpg')
Photo.create(restaurant_id: 5, url: 'http://i67.tinypic.com/2gxmrtt.jpg')

Photo.create(restaurant_id: 1, url: "https://cdn.vox-cdn.com/thumbor/7r3Xld1VO-WS6HS8_UhydAbL428=/259x0:4450x3143/1200x800/filters:focal(259x0:4450x3143)/cdn.vox-cdn.com/uploads/chorus_image/image/48825293/24392094161_cd52a90e32_o.0.0.jpg")
Photo.create(restaurant_id: 1, url: "https://image.ibb.co/kBoSvL/IMG-3077.jpg")
Photo.create(restaurant_id: 1, url: "https://image.ibb.co/nteZaL/IMG-3082.jpg")
Photo.create(restaurant_id: 1, url: "http://www.madeinjoo.com/wp-content/uploads/chefstable_brooklynfare_4.jpg")
Photo.create(restaurant_id: 1, url: "http://www.madeinjoo.com/wp-content/uploads/chefstable_brooklynfare_10.jpg")
Photo.create(restaurant_id: 1, url: "https://s3-media2.fl.yelpcdn.com/bphoto/iBjqfMs6mpMh9FqIT-oewQ/o.jpg")
Photo.create(restaurant_id: 1, url: "http://www.madeinjoo.com/wp-content/uploads/chefstable_brooklynfare_23.jpg")
Photo.create(restaurant_id: 1, url: "http://www.madeinjoo.com/wp-content/uploads/chefstable_brooklynfare_6.jpg")

Photo.create(restaurant_id: 4, url: "http://www.madeinjoo.com/wp-content/uploads/uchu-9.jpg")
Photo.create(restaurant_id: 4, url: "http://www.madeinjoo.com/wp-content/uploads/uchu-13.jpg")
Photo.create(restaurant_id: 4, url: "http://www.madeinjoo.com/wp-content/uploads/uchu-15.jpg")
Photo.create(restaurant_id: 4, url: "http://www.madeinjoo.com/wp-content/uploads/uchu-8.jpg")

Photo.create(restaurant_id: 3, url: "https://cdn-images-1.medium.com/max/1600/1*AB9hwNhmWlBBdU6UVv9xSw.png")
Photo.create(restaurant_id: 3, url: "https://assets3.thrillist.com/v1/image/2576170/size/tmg-article_default_mobile.jpg")
Photo.create(restaurant_id: 3, url: "https://carbonenewyork.com/assets/images/slides/beef-carpaccio-3.jpg")
Photo.create(restaurant_id: 3, url: "https://carbonenewyork.com/assets/images/slides/uni-6.jpg")

Photo.create(restaurant_id: 8, url: "https://image.ibb.co/ngBm5L/lacontena-4.jpg")
Photo.create(restaurant_id: 8, url: "https://image.ibb.co/doB8Kf/lacontena-5.jpg")
Photo.create(restaurant_id: 8, url: "https://image.ibb.co/cTwKQL/lacontenta-2.jpg")
Photo.create(restaurant_id: 8, url: "https://image.ibb.co/dVRKQL/lacontea-1.jpg")

Photo.create(restaurant_id: 2, url: "https://media2.trover.com/T/555cf85bae8d8a5ad0006cec/fixedw_large_2x.jpg")
Photo.create(restaurant_id: 2, url: "http://www.johnnyprimesteaks.com/wp-content/uploads/2017/03/DSC03973-1024x684.jpg")
Photo.create(restaurant_id: 2, url: "https://media-cdn.tripadvisor.com/media/photo-s/07/bd/d1/52/peter-luger-steak-house.jpg")
Photo.create(restaurant_id: 2, url: "http://tastetheworld.vista03.net/wp/wp-content/uploads/2017/04/stakehouse_stake.jpg")

Photo.create(restaurant_id: 6, url: "http://www.turntablenyc.com/wp-content/uploads/2014/07/turntable-food-03.jpg")
Photo.create(restaurant_id: 6, url: "https://www.turntablenyc.com/wp-content/uploads/2017/07/turntablechickenjazz33st.png")
Photo.create(restaurant_id: 6, url: "https://s3-media3.fl.yelpcdn.com/bphoto/UIs7MTEVI2CblymwkC_TWg/348s.jpg")
Photo.create(restaurant_id: 6, url: "http://www.hungryones.com/wp-content/uploads/2016/10/turntable.1905.jpg")

Photo.create(restaurant_id: 7, url: "https://s3-media2.fl.yelpcdn.com/bphoto/CpVI2XJLrvg09Fm83bfPog/o.jpg")
Photo.create(restaurant_id: 7, url: "https://www.nycgo.com/images/venues/620/obao-phil-kline-20__x_large.jpg")
Photo.create(restaurant_id: 7, url: "https://media.timeout.com/images/100335651/630/472/image.jpg")
Photo.create(restaurant_id: 7, url: "https://resizer.otstatic.com/v2/photos/huge/25649681.jpg")

#
# Photo.create(restaurant_id: 1, user_id: 1)
