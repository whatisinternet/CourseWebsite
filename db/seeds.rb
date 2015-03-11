# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "roles"
Role.create([{:name => 'admin'}, {:name => 'user'}, {:name => 'professor'}])
puts "Users"
user = User.create({email: 'sample2@email.com', password: 'changeMe'})
puts "Adding a role"
user.add_role :admin
