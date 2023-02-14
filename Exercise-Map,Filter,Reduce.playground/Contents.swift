// ---Order--- struct is responsible for holding information about each sales order, like how much the order was and the location of the order.
//---totalRevenueOf--- is defined. It should calculate the total revenue of the orders for the location provided. It takes an array of orders and a location. This is the function you will implement in this exercise

struct Order {
    let price: Int
    let location: String
}
 
func totalRevenueOf(orders: [Order],  location: String) -> Int {
    //filter function to separate the orders that match the location. (New York)
    let ordersAtLocation = orders.filter {$0.location==location}
    
    //Confirm that the filtered array contains the correct values
    print(ordersAtLocation)
    
    //Convert filtered orders array to array of their prices
    let orderPrices = ordersAtLocation.map {$0.price}
    
    //Print the order prices array to confirm the result
    print(orderPrices)
    
    //Return the sum of all prices (New York which is the one filttered)
//    Tip: Remember that the reduce function call produces a single object from a collection of objects. It takes an initial value in its function call, then loops through all the collection values. You can access each element as the $1 inside its closure, while $0 value represents the last calculated result.
    return orderPrices.reduce (0){$0+$1 }
}
 
let orders = [
    Order(price: 24, location: "New York"),
    Order(price: 37, location: "San Francisco"),
    Order(price: 101, location: "New York"),
]
 
let result = totalRevenueOf(orders: orders, location: "New York")
print(result)

//Print should be New York locations and the sum of prices (125)

