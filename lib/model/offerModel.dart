class Offers {
  Offers({
    required this.name,
    required this.description,
    required this.valuebefore,
    required this.valueafter,
  });
  String? name;
  String? description;
  int? valuebefore;
  int? valueafter;

  factory Offers.fromJson(Map<String, dynamic> json) => Offers(
      name: json["name"],
      description: json["description"],
      valuebefore: json["valuebefore"],
      valueafter: json["valueafter"]);
}

final offersData = [
  {
    'name': 'Mega1',
    'description': '* Available until 24 December 2020',
    'valuebefore': 32,
    'valueafter': 17,
  },
  {
    'name': 'Mega2',
    'description': '* Available until 24 December 2020',
    'valuebefore': 35,
    'valueafter': 18,
  },
];
