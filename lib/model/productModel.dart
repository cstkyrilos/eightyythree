class Products {
  Products({
    required this.code,
    required this.name,
    required this.image,
    required this.unit,
    required this.weight,
    required this.price,
    required this.qty,
  });
  String? code;
  String? name;
  int? image;
  String? unit;
  double? weight;
  double? price;
  int? qty;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
      code: json["code"],
      name: json["name"],
      image: json["image"],
      unit: json["unit"],
      weight: json["weight"],
      price: json["price"],
      qty: json["qty"]);
}

final productsData = {
  {
    'name': 'Turkish Steak',
    'image': 0xFFF9BDAD,
    'unit': 'Grams',
    'weight': 173,
    'price': 25,
  },
  {
    'name': 'Salmon',
    'image': 0xFFF9BDAD,
    'unit': 'Serving',
    'weight': 2,
    'price': 30,
  },
  {
    'name': 'Red Juice',
    'image': 0xFFF9BDAD,
    'unit': 'Bottle',
    'weight': 1,
    'price': 25,
  },
  {
    'name': 'Cola',
    'image': 0xFFF9BDAD,
    'unit': 'Bottle',
    'weight': 1,
    'price': 11,
  },
};
