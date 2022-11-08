class Carts {
  Carts({
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
  int? weight;
  int price;
  int qty;

  void incresment() {
    qty++;
  }

  void decresment() {
    qty--;
  }

  factory Carts.fromJson(Map<String, dynamic> json) => Carts(
      code: json["code"],
      name: json["name"],
      image: json["image"],
      unit: json["unit"],
      weight: json["weight"],
      price: json["price"],
      qty: json["qty"]);
}

final cartsData = {
  {
    'name': 'Turkish Steak',
    'image': 0xFFF9BDAD,
    'unit': 'Grams',
    'weight': 173,
    'price': 25,
    'qty': 2,
  },
  {
    'name': 'Salmon',
    'image': 0xFFF9BDAD,
    'unit': 'Serving',
    'weight': 2,
    'price': 30,
    'qty': 1,
  },
  {
    'name': 'Red Juice',
    'image': 0xFFF9BDAD,
    'unit': 'Bottle',
    'weight': 1,
    'price': 25,
    'qty': 3,
  },
  {
    'name': 'Cola',
    'image': 0xFFF9BDAD,
    'unit': 'Bottle',
    'weight': 1,
    'price': 11,
    'qty': 2,
  },
};
