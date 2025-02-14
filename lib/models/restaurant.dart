import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers

    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 3.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savoury delight.",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapeños", price: 1.99),
        Addon(name: "Extra BBQ sauce", price: 2.99),
      ],
    ),

    Food(
      name: "Veggie Burger",
      description:
          "A delicious plant-based patty made with black beans, quinoa, and spices, topped with fresh lettuce, tomato, and vegan mayo.",
      imagePath: "lib/images/burgers/vege_burger.png",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Avocado", price: 2.99),
        Addon(name: "Grilled Mushrooms", price: 1.99),
        Addon(name: "Vegan Cheese", price: 1.99),
      ],
    ),

    Food(
      name: "Bluemoon Burger",
      description:
          "A unique burger featuring a blue cheese-infused patty, caramelized onions, arugula, and a tangy blueberry glaze.",
      imagePath: "lib/images/burgers/bluemoon_burger.png",
      price: 11.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Blue Cheese", price: 1.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Fried Egg", price: 1.49),
      ],
    ),

    Food(
      name: "Aloha Burger",
      description:
          "A tropical twist on the classic burger, topped with grilled pineapple, teriyaki glaze, crispy bacon, and Swiss cheese.",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 12.99,
      category: FoodCategory.burgers,
      availableAddon: [
        Addon(name: "Extra Pineapple", price: 1.49),
        Addon(name: "Jalapeños", price: 1.99),
        Addon(name: "Coconut Shrimp", price: 3.99),
      ],
    ),

    // desserts

    Food(
      name: "New York CheeseCake",
      description:
          "Creamy cheesecake on a graham cracker crust, with a berry compote",
      imagePath: "lib/images/desserts/New_York_cheesecake.png",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Strawberry Topping", price: 0.99),
        Addon(name: "Blueberry Compote", price: 1.49),
        Addon(name: "Chocolate Chips", price: 1.99),
      ],
    ),

    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm, gooey chocolate cake with a molten chocolate center, served with a scoop of vanilla ice cream.",
      imagePath:
          "lib/images/desserts/Chocolate_lava_cake.png", // Replace with your image path
      price: 7.49,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Raspberry Coulis", price: 1.29),
        Addon(name: "Whipped Cream", price: 0.99),
        Addon(name: "Extra Scoop of Ice Cream", price: 1.99),
      ],
    ),

    Food(
      name: "Churros with Chocolate Dip",
      description:
          "Crispy, fried dough sticks dusted with cinnamon sugar, served with a rich chocolate dipping sauce.",
      imagePath:
          "lib/images/desserts/churros.png", // Replace with your image path
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Caramel Sauce", price: 0.79),
        Addon(name: "Vanilla Ice Cream", price: 1.49),
        Addon(name: "Extra Chocolate Dip", price: 1.99),
      ],
    ),

    Food(
      name: "Macaron Assortment",
      description:
          "A colorful assortment of delicate French macarons with various flavors.",
      imagePath:
          "lib/images/desserts/Macaron_assortment.png", // Replace with your image path
      price: 8.99,
      category: FoodCategory.desserts,
      availableAddon: [], // Macarons are often sold as-is
    ),

    Food(
      name: "Tiramisu",
      description:
          "Classic Italian dessert with layers of espresso-soaked ladyfingers, mascarpone cream, and cocoa powder.",
      imagePath:
          "lib/images/desserts/Tiramisu.png", // Replace with your image path
      price: 7.99,
      category: FoodCategory.desserts,
      availableAddon: [
        Addon(name: "Extra Cocoa Powder", price: 0.50),
        Addon(name: "Chocolate Shavings", price: 0.75),
      ],
    ),

    // drinks

    Food(
      name: "Classic Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagePath:
          "lib/images/drinks/classic_lemonade_drink.png", // Replace with your image path
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Strawberry flavour", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.45),
        Addon(name: "Ginger Zest", price: 1.75),
      ],
    ),

    Food(
      name: "Cold Brew Coffee",
      description: "Smooth and rich cold brew coffee, steeped for 24 hours.",
      imagePath:
          "lib/images/drinks/cold_brew_coffee_drink.png", // Replace with your image path
      price: 3.49,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Cream", price: 0.50),
        Addon(name: "Sugar", price: 0.25),
        Addon(name: "Vanilla Syrup", price: 0.75),
        Addon(name: "Caramel Syrup", price: 0.75),
      ],
    ),

    Food(
      name: "Iced Latte",
      description: "Espresso and milk over ice, a perfect pick-me-up.",
      imagePath:
          "lib/images/drinks/iced_latte_drink.png", // Replace with your image path
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Vanilla Syrup", price: 0.75),
        Addon(name: "Caramel Syrup", price: 0.75),
        Addon(name: "Hazelnut Syrup", price: 0.75),
        Addon(name: "Oat Milk", price: 1.00), // Example non-dairy option
      ],
    ),

    Food(
      name: "Mango Lassi",
      description: "A refreshing yogurt-based drink with sweet mangoes.",
      imagePath:
          "lib/images/drinks/mango_lassi_drink.png", // Replace with your image path
      price: 4.49,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Cardamom", price: 0.50),
        Addon(name: "Pistachios", price: 0.75),
        Addon(name: "Rose Water", price: 0.50),
      ],
    ),

    Food(
      name: "Sparkling Water",
      description: "Crisp and bubbly sparkling water, naturally refreshing.",
      imagePath:
          "lib/images/drinks/sparkling_water_drink.png", // Replace with your image path
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddon: [
        Addon(name: "Lime", price: 0.50),
        Addon(name: "Lemon", price: 0.50),
        Addon(name: "Mint", price: 0.50),
        Addon(name: "Berry Flavor", price: 0.75),
      ],
    ),

    // salads

    Food(
      name: "Quinoa Salad",
      description:
          "Quinoa mixed with cucumbers, tomatoes, bell peppers, and a lemon vinaigrette",
      imagePath: "lib/images/salads/quinoa_salad.png",
      price: 12.99,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Avocado", price: 1.49),
        Addon(name: "Feta Cheese", price: 1.49),
        Addon(name: "Grilled Chicken", price: 1.99),
      ],
    ),

    Food(
      name: "Asian Sesame Salad",
      description:
          "Mixed greens with sesame dressing, shredded carrots, edamame, and toasted sesame seeds.",
      imagePath: "lib/images/salads/asiansesame_salad.png",
      price: 11.99,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Shrimp", price: 2.49),
        Addon(name: "Avocado", price: 1.49),
      ],
    ),

    Food(
      name: "Caesar Salad",
      description:
          "Romaine lettuce, parmesan cheese, creamy Caesar dressing, and croutons.",
      imagePath: "lib/images/salads/caesar_salad.png",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Shrimp", price: 2.49),
        Addon(name: "Anchovies", price: 0.99),
      ],
    ),

    Food(
      name: "Greek Salad",
      description:
          "Cucumbers, tomatoes, red onion, Kalamata olives, feta cheese, and a red wine vinaigrette.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 10.99,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Hummus", price: 1.49),
        Addon(name: "Pita Bread", price: 1.99),
      ],
    ),

    Food(
      name: "Southwest Salad",
      description:
          "Mixed greens, black beans, corn, avocado, pepper jack cheese, and a chipotle ranch dressing.",
      imagePath: "lib/images/salads/southwest_salad.png",
      price: 12.49,
      category: FoodCategory.salads,
      availableAddon: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Steak", price: 2.99),
        Addon(name: "Sour Cream", price: 0.99),
      ],
    ),

    // sides

    Food(
      name: "Onion Rings",
      description: "Golden and crispy onion rings, perfect for dipping",
      imagePath: "lib/images/sides/onionrings_side.png",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Ranch Dip", price: 0.99),
        Addon(name: "Spicy Mayo", price: 1.49),
        Addon(name: "Parmesan Dust", price: 1.99),
      ],
    ),

    Food(
      name: "Garlic Bread Side",
      description: "Toasty garlic bread, buttery and flavorful",
      imagePath:
          "lib/images/sides/garlicbread_side.png", // Replace with actual path
      price: 4.49, // Adjust price as needed
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Extra Garlic Butter", price: 0.79),
        Addon(name: "Cheese Dip", price: 1.29),
        Addon(name: "Marinara Sauce", price: 1.49),
      ],
    ),

    Food(
      name: "Loaded Fries Side",
      description: "Crispy fries loaded with cheese, bacon, and more",
      imagePath:
          "lib/images/sides/loadedfries_side.png", // Replace with actual path
      price: 5.99, // Adjust price as needed
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Jalapenos", price: 0.59),
        Addon(name: "Sour Cream", price: 0.79),
        Addon(name: "Chili", price: 1.99),
      ],
    ),

    Food(
      name: "Sweet Potato Side",
      description: "Savory and slightly sweet sweet potato fries or wedges",
      imagePath:
          "lib/images/sides/sweetpotato_side.png", // Replace with actual path
      price: 4.99, // Adjust price as needed
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Maple Syrup Dip", price: 0.99),
        Addon(name: "Cinnamon Sugar", price: 0.79),
        Addon(name: "Spicy Mayo", price: 1.49), // Can reuse existing addons
      ],
    ),

    Food(
      name: "Macaroni Side",
      description: "Creamy and cheesy macaroni and cheese",
      imagePath: "lib/images/sides/mac_side.png", // Replace with actual path
      price: 5.49, // Adjust price as needed
      category: FoodCategory.sides,
      availableAddon: [
        Addon(name: "Bacon Bits", price: 1.29),
        Addon(name: "Extra Cheese", price: 1.59),
        Addon(name: "Jalapenos", price: 0.59), // Can reuse existing addons
      ],
    ),
  ];

  /*

  G E T T E R S

  */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*
 
  O P E R A T I O N S

  */

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.remove(cartIndex);
      }
    }
    notifyListeners();
  }

  // total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  H E L P E R S

  */

  // generate a receipt

  // format double value into money

  // format list of addons into a string summary
}
