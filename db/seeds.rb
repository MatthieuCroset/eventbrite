

10.times do
 event= Event.create!(title: Faker::Address.city, duration: Faker::Number.between(from: 1, to: 1000), start_date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'), description: Faker::Quote.famous_last_words, price:Faker::Number.between(from: 1, to: 1000), location: Faker::Address.city)
end

puts "10 events créées"

10.times do
	user = User.create!(name: Faker::Name.first_name, email: Faker::Internet.free_email, description: Faker::Quote.famous_last_words, encrypted_password: Faker::Name.last_name)
end

puts "10 users créés"

20.times do
  attendance = Attendance.create!(stripe_customer_id: Faker::Number.number(digits: 5), user: User.all.sample(1).first, event: Event.all.sample(1).first)
end

puts "20 attendances créés"