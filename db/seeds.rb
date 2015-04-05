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
puts "creating about page"
readme = ""
File.readlines("readme.md").each { |line| readme += line.to_s}
SparkPlugs::StaticPage.create({:page => 'about', :title => 'about this page', :content => readme})
puts "Creating valid user"
user = User.create({email: "changeme@changeme.com", password: "changeMe"})
puts "Adding a role"
user.add_role :admin
puts "Creating a course"
course = Course.create({code: "CP476",
                        description: "Course description for sample data",
                        user_id: user.id})

puts "Creating an assignment"
assignment = Assignment.create({base_info: "Some basic assignment information",
                                name: "Assignment Demo",
                                due: Date.today,
                                course_id: course.id})

puts "Adding a question"
AssignmentQuestion.create({assignment_id: assignment.id,
                           question_number: "1",
                           question: "Sample question",
                           weight: "5",
                           help: "no help"})

puts "Creating a lecture"
Lecture.create({name: "Demo lecture",
                lecture_date: Date.today,
                content: "Here is some sample content. Here is some sample content. Here is some sample content.",
                slides: "https://github.com",
                course_id: course.id})

puts "Creating a note"
Note.create({date: Date.today,
             title: "Sample note",
             body: "Some sample notes would go here",
             display: true,
             course_id: course.id})



puts "done!\n\n"
puts "\n\n!!! IMPORTANT !!!\n\n\n"
puts "Username: #{user.email}, Password: changeMe"
puts "\n\n!!! IMPORTANT !!!\n\n"

