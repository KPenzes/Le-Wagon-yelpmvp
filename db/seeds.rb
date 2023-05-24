puts "Cleaning the db..."
Restaurant.destroy_all

puts "Creating 10 restaurants..."

10.times do
  resto = Restaurant.create!(
    name: Faker::TvShows::Seinfeld.business,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  puts "Restaurant with id #{resto.id} was created"
end

puts "All done!"
