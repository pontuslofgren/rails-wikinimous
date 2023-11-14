# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require 'faker'

10.times do |i|
  title = Faker::Movie.title #=> "The Lord of the Rings: The Two Towers"
  content = Faker::Quote.famous_last_words #=> "My vocabulary did this to me. Your love will let you go on…"

  article = Article.create(title: title, content: content)
end
