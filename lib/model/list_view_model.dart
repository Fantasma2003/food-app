class FoodList {
  final String foodType;
  final String imageUrl;

  FoodList({
    required this.foodType,
    required this.imageUrl,
  });

  factory FoodList.fromJson(Map<String, dynamic> json) {
    return FoodList(
      foodType: json['foodType'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'foodType': foodType,
      'imageUrl': imageUrl,
    };
  }
}


class FoodLists1 {
  FoodList salad = FoodList(foodType: 'Salad', imageUrl: 'assets/images/menu/menu_1.png');
  FoodList rolls = FoodList(foodType: 'Rolls', imageUrl: 'assets/images/menu/menu_2.png');
  FoodList deserts = FoodList(foodType: 'Deserts', imageUrl: 'assets/images/menu/menu_3.png');
  FoodList sandwich = FoodList(foodType: 'Sandwich', imageUrl: 'assets/images/menu/menu_4.png');
  FoodList cake = FoodList(foodType: 'Cake', imageUrl: 'assets/images/menu/menu_5.png');
  FoodList pureVeg = FoodList(foodType: 'Pure Veg', imageUrl: 'assets/images/menu/menu_6.png');
  FoodList pasta = FoodList(foodType: 'Pasta', imageUrl: 'assets/images/menu/menu_7.png');
  FoodList noodles = FoodList(foodType: 'Noodles', imageUrl: 'assets/images/menu/menu_8.png');

  late List<FoodList> foodList;

  FoodLists1() {
    foodList = [
      salad,
      rolls,
      deserts,
      sandwich,
      cake,
      pureVeg,
      pasta,
      noodles,
    ];
  }
}
