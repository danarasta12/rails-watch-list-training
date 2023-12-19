Movie.destroy_all
List.destroy_all
puts "Cleaning database"

10.times do
  Movie.create(title: Faker::Movie.title, overview: Faker::Movies::Departed.quote, poster_url: "https://source.unsplash.com/random/?potter", rating: rand(0.0..10.0).round(1))
end
puts "10 movies created"

List.create(name: "Comedy")
List.create(name: "Horror")

puts "2 lists created"
