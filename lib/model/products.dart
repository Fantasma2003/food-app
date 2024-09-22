class Food {
  final String foodName;
  final String foodDescription;
  final String price;
  final String imageUrl;

  Food({
    required this.foodName,
    required this.foodDescription,
    required this.price,
    required this.imageUrl,
  });

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      foodName: json['foodName'],
      foodDescription: json['foodDescription'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'foodName': foodName,
      'foodDescription': foodDescription,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}
