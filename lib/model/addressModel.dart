class Addresses {
  Addresses({
    required this.name,
    required this.street,
    required this.build,
  });
  String? name;
  String? street;
  String? build;

  factory Addresses.fromJson(Map<String, dynamic> json) => Addresses(
      name: json["name"], street: json["street"], build: json["build"]);
}

final addressesData = [
  {
    'name': 'Home Address',
    'street': 'Mustafa St. No:2',
    'build': 'Street x12',
  },
  {
    'name': 'Office Address',
    'street': 'Axis Istanbul, B2 Blok',
    'build': 'Floor 2, Office 11',
  },
];
