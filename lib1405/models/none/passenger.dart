class Passenger {
  String name;
  String address;
  String phoneNumber;
  String email;

  Passenger({
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.email,
  });

  factory Passenger.fromJson(Map<String, dynamic> json) => Passenger(
        name: json['name'],
        address: json['address'],
        phoneNumber: json['phoneNumber'],
        email: json['email'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'phoneNumber': phoneNumber,
        'email': email,
      };
}
