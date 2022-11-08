class Deals {
  Deals({
    required this.name,
    required this.description,
    required this.awayfrom,
    required this.valuebefore,
    required this.valueafter,
  });
  String? name;
  String? description;
  int? awayfrom;
  int? valuebefore;
  int? valueafter;

  factory Deals.fromJson(Map<String, dynamic> json) => Deals(
      name: json["name"],
      description: json["description"],
      awayfrom: json["awayfrom"],
      valuebefore: json["valuebefore"],
      valueafter: json["valueafter"]);
}

final dealsData = [
  {
    'name': 'Summer Sun Ice Cream Pack',
    'description': 'Pieces 5',
    'awayfrom': 15,
    'valuebefore': 18,
    'valueafter': 12,
  },
  {
    'name': 'Summer Sun Ice Cream Pack',
    'description': 'Pieces 5',
    'awayfrom': 15,
    'valuebefore': 18,
    'valueafter': 12,
  },
];
