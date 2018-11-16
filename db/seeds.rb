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
    name: 'Carbone',
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

Photo.create(restaurant_id: 1, url: "https://image.ibb.co/iApBN0/IMG-3112.jpg")
Photo.create(restaurant_id: 1, url: "https://image.ibb.co/kBoSvL/IMG-3077.jpg")
Photo.create(restaurant_id: 1, url: "https://image.ibb.co/nteZaL/IMG-3082.jpg")
Photo.create(restaurant_id: 1, url: "https://image.ibb.co/heTuaL/IMG-3087.jpg")
Photo.create(restaurant_id: 1, url: "https://image.ibb.co/fvJuaL/IMG-3090.jpg")
Photo.create(restaurant_id: 1, url: "https://image.ibb.co/dO1rN0/IMG-3097.jpg")
Photo.create(restaurant_id: 1, url: "https://image.ibb.co/cZAJ20/IMG-3102.jpg")
Photo.create(restaurant_id: 1, url: "https://image.ibb.co/iPhWN0/IMG-3109.jpg")

#
# Photo.create(restaurant_id: 1, user_id: 1)
