class Category {
  Category({
    required this.name,
    required this.color,
  });
  String? name;
  int? color;

  factory Category.fromJson(Map<String, dynamic> json) =>
      Category(name: json["name"], color: json["color"]);
}

final categoryData = [
  {
    'name': 'Steak',
    'color': 0xFFF9BDAD,
  },
  {
    'name': 'Vegetables',
    'color': 0xFFFAD96D,
  },
  {
    'name': 'Beverages',
    'color': 0xFFCCB8FF,
  },
  {
    'name': 'Fish',
    'color': 0xFFB0EAFD,
  },
  {
    'name': 'Juice',
    'color': 0xFFFF9DC2,
  },
];
