# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Food.create(
    name: "Shaved Ice",
    price: "0.99",
    initial_qty: "30",
    sold_qty: "0"
)
Food.create(
    name: "Chocolate Bar",
    price: "2.50",
    initial_qty: "10",
    sold_qty: "0"
)
Food.create(
    name: "Pistachio Ice Cream",
    price: "2.00",
    initial_qty: "12",
    sold_qty: "0"
)
Food.create(
    name: "Mint Ice Cream",
    price: "2.20",
    initial_qty: "5",
    sold_qty: "0"
)
Food.create(
    name: "Strawberry Ice Cream",
    price: "1.00",
    initial_qty: "24",
    sold_qty: "0"
)
Food.create(
    name: "Chocolate Ice Cream",
    price: "0.50",
    initial_qty: "36",
    sold_qty: "0"
)