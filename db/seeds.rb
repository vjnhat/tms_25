User.delete_all
Course.delete_all
Subject.delete_all

User.create!(name: "Admin",
             email: "admin@gmail.com",
             password: "admin",
             password_confirmation: "admin",
             supervisor: true)

User.create!(name: "khanhkhanh",
             email: "khanhkhanh@gmail.com",
             password: "khanhkhanh",
             password_confirmation: "khanhkhanh",
             supervisor: false)

48.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@tms.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password: password,
              password_confirmation: password)
end

9.times do |n|
  Subject.create!(name: "Maths #{n+1}", instruction: "Instruction #{n+1}")
end

9.times do |n|
  Course.create!(course_code: "CS0#{n+1}", name: "Computer Science 0#{n+1}")
end
