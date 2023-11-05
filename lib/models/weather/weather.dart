class Weather {
  double latitude;
  double longitude;
  double generationTimeMs;
  int utcOffsetSeconds;
  String timezone;
  String timezoneAbbreviation;
  double elevation;
  Map<String, String> hourlyUnits;
  Map<String, List<String>> hourly;

  Weather({
    this.latitude = 0.0,
    this.longitude = 0.0, 
    this.generationTimeMs = 0.0, 
    this.utcOffsetSeconds = 0, 
    this.timezone = '', 
    this.timezoneAbbreviation = '', 
    this.elevation = 0.0, 
    this.hourlyUnits = const {}, 
    this.hourly = const {}, 
  });

  factory Weather.fromJson(Map<String, dynamic> json) {

    Map<String, dynamic> hourlyUnitsJson = json['hourly_units'];
    Map<String, dynamic> hourlyJson = json['hourly'];

    Map<String, String> hourlyUnits = Map<String, String>.from(
        hourlyUnitsJson.map((key, value) => MapEntry(key, value.toString())));
    
    Map<String, List<String>> hourly = Map<String, List<String>>.from(
        hourlyJson.map((key, value) {
      List<String> values = (value as List).map((v) => v.toString()).toList();
      return MapEntry(key, values);
    }));

    return Weather(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      generationTimeMs: (json['generationtime_ms'] as num).toDouble(),
      utcOffsetSeconds: json['utc_offset_seconds'] as int,
      timezone: json['timezone'] as String,
      timezoneAbbreviation: json['timezone_abbreviation'] as String,
      elevation: (json['elevation'] as num).toDouble(),
      hourlyUnits: hourlyUnits,
      hourly: hourly,
    );
  }
}