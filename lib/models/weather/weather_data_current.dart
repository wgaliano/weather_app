//instance for getting the api response
class WeatherDataCurrent {
  final Current current;
  WeatherDataCurrent({required this.current});

  factory WeatherDataCurrent.fromJson(Map<String, dynamic> json) =>
    WeatherDataCurrent(current: Current.fromJson(json['current']));
}


class Current {
  double? latitude;
  double? longitude;
  String? timezone;
  String? timezoneAbbreviation;

  Current({
    this.latitude,
    this.longitude,
    this.timezone,
    this.timezoneAbbreviation,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        latitude: (json['latitude'] as num?)?.toDouble(),
        longitude: (json['longitude'] as num?)?.toDouble(),
        timezone: json['timezone'] as String?,
        timezoneAbbreviation: json['timezone_abbreviation'] as String?
      );

  Map<String, dynamic> toJson() => {
        'latitude': latitude,
        'longitude': longitude,
        'timezone': timezone,
        'timezone_abbreviation': timezoneAbbreviation,
      };
}
