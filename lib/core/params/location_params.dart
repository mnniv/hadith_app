class LocationParams {
  final double latitude;
  final double longitude;
  final String locationName;

  const LocationParams({
    required this.latitude,
    required this.longitude,
    required this.locationName,
  });

  LocationParams copyWith({double? latitude, double? longitude}) {
    return LocationParams(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      locationName: locationName ?? this.locationName,
    );
  }
}
