# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  users = User.create([
  		{
  		name: "alex",
  		email: "a@ga.com",
  		password: "text"
  		},
  		 {
  		name: "bob",
  		email: "b@ga.com",
  		password: "test"
  		}
  ]);

  cars = car.create([
    {
    make: "Honda",
   model: "Accord",
   year: 2008,
   trim: "Sedan",
   mileage: 75000,
   price: 14500.00,
   transmission: "Auto",
   colour: "Black",
   description: "title clean, never been in accident" 
    },
    {
   make: "BMW",
   model: "328i",
   year: 2009,
   trim: "coupe",
   mileage: 68000,
   price: 23500,
   transmission: "manual", 
   colour: "white",
   description: "clean in and out, all power options, leather seats and inbuilt nevagition"
    }
  ]);
