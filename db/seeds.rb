# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# \\\\\\\\\\\\\\\\\\FAKE COURTS
10.times do 
    court_name = Faker::Address.community
    court_location =  Faker::Address.city
    Court.create(name: court_name, location: court_location)
end


# ///////////////////FAKE USERS
100.times do 
    user_name = Faker::FunnyName.name
    user_age = Faker::Number.digit

    User.create(name: user_name, age: user_age)
end



