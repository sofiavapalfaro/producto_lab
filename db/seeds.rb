# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
 puts "Creating products..."

 Product.create!(name: "Camisa Blanca", price: 19.99, stock: 20)
 Product.create!(name: "Pantalon Negro", price: 39.99, stock: 15)
 Product.create!(name: "Jacket de Jean", price: 59.99, stock: 8)
 Product.create!(name: "Zapatillas", price: 49.99, stock: 12)
 Product.create!(name: "Gorra Roja", price: 14.99, stock: 25)
 Product.create!(name: "Vestido Largo", price: 44.99, stock: 10)
 Product.create!(name: "Camisa con Rayas", price: 29.99, stock: 18)
 Product.create!(name: "Sudadera Gris", price: 34.99, stock: 7)
 Product.create!(name: "Botas Azules", price: 69.99, stock: 5)
 Product.create!(name: "Falda Corta", price: 24.99, stock: 14)

puts "10 products created!"
