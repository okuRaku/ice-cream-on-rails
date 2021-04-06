# Ice Cream Truck on Rails

Super simple exploration of the Ruby on Rails API Mode through an implementation of an Ice Cream Truck.

The truck provides an initial inventory and prices for items (see [db/seeds.rb](db/seeds.rb)) and two endpoints:


* ```GET /api/v1/foods```
Lists the current inventory as well as the total sales in units and revenue

* ```PUT /api/v1/buy```
Takes a JSON request to buy an item, with parameters ```name``` and ```quantity```.  If quantity is greater than available inventory, returns an error.

* Setup:
After cloning the repo, please run ```rails db:migrate && rails db:seed``` to setup and populate the database with the test data.   Then use the [testing.http](testing.http) file in VSCode Rest Client (or your favorite HTTP client) to test.

Additional routes provided by Rails 'resources' shortcut have not been implemented for simplicity.
