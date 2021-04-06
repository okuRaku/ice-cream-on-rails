# Ice Cream Truck on Rails

Super simple exploration of the Ruby on Rails API Mode through an implementation of an Ice Cream Truck.

The truck provides an initial inventory and prices for items (see [db/seeds.rb](db/seeds.rb)) and two endpoints:

* ```GET /api/v1/foods```
Lists the current inventory as well as the total sales in units and revenue

* ```PUT /api/v1/buy```
Takes a JSON request to buy an item, with parameters ```name``` and ```quantity```.  If quantity is greater than available inventory, returns an error.

A [testing.http](testing.http) file used for development is provided.

Other routes provided by resources have not been implemented for simplicity.
