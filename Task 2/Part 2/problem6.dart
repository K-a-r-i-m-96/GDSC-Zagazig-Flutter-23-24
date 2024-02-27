/*Shopping Cart
Create a function calculateTotalPrice(cart) that takes a Map
representing a shopping cart (item name as key, Prices as value)
and returns the total price. Handle cases where items are not
found in the Prices Map.*/

double calculateTotalPrice(
    Map<String, double> cart, Map<String, double> prices) {
  double totalPrice = 0;

  cart.forEach((itemName, quantity) {
    if (prices.containsKey(itemName)) {
      double price = prices[itemName] ?? 0;
      totalPrice += price * quantity;
    } else {
      print("The Item '$itemName' is not found in price list.");
    }
  });

  return totalPrice;
}
