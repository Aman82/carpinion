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

    create_table "answers", force: true do |t|
    t.string   "name"
    t.integer  "poll_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["poll_id"], name: "index_answers_on_poll_id", using: :btree

  create_table "polls", force: true do |t|
    t.string   "question"
    t.string   "creator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.string   "user"
    t.integer  "answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["answer_id"], name: "index_votes_on_answer_id", using: :btree

