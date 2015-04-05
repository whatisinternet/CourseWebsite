# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "\n\n\n\n"
puts "SEEDING--------"
puts "Adding roles: admin, user, professor"
Role.create([{:name => 'admin'}, {:name => 'user'}, {:name => 'professor'}])
puts "Creating valid user"
user = User.create({email: changeme@changeme.com, password: "changeMe"})
puts "Adding a role"
user.add_role :admin
puts "done!\n\n"
puts "\n\n!!! IMPORTANT !!!\n\n\n"
puts "Username: #{user.email}, Password: changeMe"
puts "\n\n!!! IMPORTANT !!!\n\n"

