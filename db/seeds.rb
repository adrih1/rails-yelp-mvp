# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
oishi = { name: 'Oishi', address: '7 rue de Rennes', category: 'japanese' }
pizza = { name: 'Pizza', address: '53 Place Monge', category: 'italian' }
joe_burger = { name: 'Joe Burger', address: '4 rue Mouffetard', category: 'french' }
pot_o_lait = { name: 'Pot O Lait', address: 'Place Contrescarpe', category: 'belgian' }
chez_ann = { name: 'Chez Ann', address: '18 rue Moufetard', category: 'chinese' }

[oishi, pizza, joe_burger, pot_o_lait, chez_ann].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
