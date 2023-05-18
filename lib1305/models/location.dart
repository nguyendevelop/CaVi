class Location {
  int locationId;
  String locationName;
  String locationCode;

  Location({
    required this.locationId,
    required this.locationName,
    required this.locationCode,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        locationId: json['locationId'] as int,
        locationName: json['locationName'] as String,
        locationCode: json['locationCode'] as String,
      );

  Map<String, dynamic> toJson() => {
        'locationId': locationId,
        'locationName': locationName,
        'locationCode': locationCode,
      };
}
