# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Creating 100 fake posts...'

10.times do
  post = Post.new(
    title: Faker::TvShows::Friends.quote,
    content: Faker::Music::Prince.lyric
  )
  post.save!
end

puts 'Finished !'
