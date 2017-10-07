# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(
  name: 'Motorbike',
  image: 'https://images.unsplash.com/photo-1471466054146-e71bcc0d2bb2?dpr=1&auto=compress,format&fit=crop&w=753',
  description: 'A motorcycle (or motorbike) is a vehicle used to transport people from one place to another.',
  price: 9678.99,
  position: 1
)

Product.create(
  name: 'Car',
  image: 'https://images.unsplash.com/photo-1489008777659-ad1fc8e07097?dpr=1&auto=compress,format&fit=crop&w=753',
  description: 'A car (or automobile) is a wheeled motor vehicle used for transportation.',
  price: 3876.00,
  position: 2
)

Product.create(
  name: 'Road Bike',
  image: 'https://images.unsplash.com/photo-1490367131393-6783b40924d0?dpr=1&auto=compress,format&fit=crop&w=753',
  description: 'A bike is a human-powered, pedal-driven, single-track vehicle, having two wheels attached to a frame.',
  price: 896.50,
  position: 3
)

Product.create(
  name: 'Plane',
  image: 'https://images.unsplash.com/photo-1487702221221-7cbd3db58aef?dpr=1&auto=compress,format&fit=crop&w=753',
  description: 'A bike is a human-powered, pedal-driven, single-track vehicle, having two wheels attached to a frame.',
  price: 995896.5,
  position: 4
)
