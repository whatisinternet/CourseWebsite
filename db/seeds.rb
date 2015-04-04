# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'factory_girl_rails'
require 'faker'
puts "\n\n\n\n"
puts "SEEDING--------"
puts "Adding roles: admin, user, professor"
Role.create([{:name => 'admin'}, {:name => 'user'}, {:name => 'professor'}])

puts "Adding courses, assignments and lectures"

courses = Array.new()
assignments = Array.new()
ass_questions = Array.new()
lectures = Array.new()
notes = Array.new()

q = rand(20..200)
o = rand(10..(q/2))

puts "#{q} questions"
q.times {ass_questions.push(FactoryGirl.create(:assignment_question))}
Assignment.delete_all

puts "#{o} assignments"
o.times {assignments.push(FactoryGirl.create(:assignment))}

puts "#{o} lectures"
o.times {lectures.push(FactoryGirl.create(:lecture))}

puts "5 notes"
5.times {notes.push(FactoryGirl.create(:note))}

Course.delete_all

puts "5 courses"
5.times {courses.push(FactoryGirl.create(:course))}

puts "Fixing associations"
ass_questions.each do |aq|
  aq.assignment_id = assignments.sample.id
  aq.save!
end
assignments.each do |assignment|
  course_id = courses.sample.id
  assignment.course_id = course_id
  assignment.save!
end
lectures.each do |lecture|
  lecture.course_id = courses.sample.id
  lecture.save!
end
notes.each do |note|
  note.course_id = courses.sample.id
  note.save!
end
puts "associations fixed"

puts "removing junk users"
User.destroy_all
puts "done"
puts "Creating valid user"
user = User.create({email: Faker::Internet.email, password: "changeMe"})
puts "Adding a role"
user.add_role :admin
courses.each do |course|
  course.user_id = user.id
end


puts "done!\n\n"

puts "\n\n!!! IMPORTANT !!!\n\n\n"
puts "Username: #{user.email}, Password: changeMe"
puts "\n\n!!! IMPORTANT !!!\n\n"

