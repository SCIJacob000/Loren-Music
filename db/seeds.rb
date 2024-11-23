# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
Musician.create!(
  first_name: 'Loren',
  last_name: 'Zuko',
  username: 'LZ Music',
  password: 'Encrypt Later', # you can encrypt it if needed with has_secure_password
  instruments: 'Guitar, Piano, Cello',
  local_area: 'Denver, CO',
)

