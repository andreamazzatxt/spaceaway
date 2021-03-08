User.destroy_all
10.times do
  User.create!(
      email: Faker::Internet.email,
      first_name:
    )
end
