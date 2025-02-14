// food items

class Food {
  final String name;            //  cheeseburger
  final String description;     //  a burger full of cheese 
  final String imagePath;       //  lib/images/cheeseburger.png
  final double price;           //  4.99
  final FoodCategory category;  //  burgers
  List<Addon> availableAddon;   //  [ extra cheese, sauce, extra patty ]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddon,
  });
}

// food categories

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// food addons

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
  
}
