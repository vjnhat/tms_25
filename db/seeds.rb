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

50.times do |n|
  Subject.create!(name: "#{n+1} name")
end

50.times do |n|
  Course.create!(name: "#{n+1} name")
end
