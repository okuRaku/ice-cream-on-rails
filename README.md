# Ice Cream Truck on Rails

Super simple exploration of the Ruby on Rails API Mode through an implementation of an Ice Cream Truck.

The truck provides an initial inventory and prices for items (see [db/seeds.rb](db/seeds.rb)) and two endpoints:

* ```GET /api/v1/foods```
Lists the current inventory across trucks as well as the total sales in units and revenue

* ```GET /api/v1/trucks```
Lists current trucks with their sales as well as the total sales in units and revenue

* ```GET /api/v1/trucks/:id```
List inventory and sales for a particular truck (1, 2, etc)

* ```PUT /api/v1/trucks/:id/sell```
Takes a JSON request to buy an desired food item, an object with properties ```type```, ```flavor```, (in the case of Ice Cream) and ```quantity```.  If quantity is greater than available inventory, returns an error.

Example:
```json
{
    "food" : {
        "type": "IceCream",
        "flavor": "pistachio",
        "quantity": 7
    }
}
```


## Setup:
After cloning the repo, please run ```rails db:migrate && rails db:seed``` to setup and populate the database with the test data.   Then use the [testing.http](testing.http) file in VSCode Rest Client (or your favorite HTTP client) to test.

Additional routes provided by Rails 'resources' shortcut have not been implemented for simplicity.
