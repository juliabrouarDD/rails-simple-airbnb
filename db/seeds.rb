require 'faker'

5.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: Faker::Number.within(50..500),
    number_of_guests: Faker::Number.within(1..10)
  )
  flat.save!
end
