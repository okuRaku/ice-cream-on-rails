# since example started with dollar-like values, cents are used for price
Truck.create(
    name: "Jesse's First Ice Cream Truck"
)
ShavedIce.create(
    truck_id: 1,
    name: "Shaved Ice",
    price: "99",
    initial_qty: "30",
    sold_qty: "0",
)
ChocolateBar.create(
    truck_id: 1,
    name: "Chocolate Bar",
    price: "250",
    initial_qty: "10",
    sold_qty: "0"
)
IceCream.create(
    truck_id: 1,
    name: "Pistachio Delight",
    price: "200",
    flavor: "pistachio",
    initial_qty: "12",
    sold_qty: "0"
)
IceCream.create(
    truck_id: 1,
    name: "Maximum Enjoy Mint",
    price: "220",
    flavor: "mint",
    initial_qty: "5",
    sold_qty: "0"
)
IceCream.create(
    truck_id: 1,
    name: "Very Strawberry",
    price: "100",
    flavor: "strawberry",
    initial_qty: "24",
    sold_qty: "0"
)
IceCream.create(
    truck_id: 1,
    name: "Chocolate Of Course",
    flavor: "chocolate",
    price: "50",
    initial_qty: "36",
    sold_qty: "0"
)
Truck.create(
    name: "Jesse's Second Ice Cream Truck"
)
IceCream.create(
    truck_id: 2,
    name: "Secondary Still Nice",
    price: "100",
    flavor: "vanilla",
    initial_qty: "40",
    sold_qty: "0"
)
IceCream.create(
    truck_id: 2,
    name: "Pistachio Delight",
    price: "300",
    flavor: "pistachio",
    initial_qty: "22",
    sold_qty: "0"
)