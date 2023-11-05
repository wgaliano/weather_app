class HourlyUnits {
  String? time;
  String? temperature2m;
  String? relativeHumidity2m;
  String? windSpeed10m;
  String? uvIndex;

  HourlyUnits({
    this.time,
    this.temperature2m,
    this.relativeHumidity2m,
    this.windSpeed10m,
    this.uvIndex,
  });

  factory HourlyUnits.fromJson(Map<String, dynamic> json) => HourlyUnits(
        time: json['time'] as String?,
        temperature2m: json['temperature_2m'] as String?,
        relativeHumidity2m: json['relative_humidity_2m'] as String?,
        windSpeed10m: json['wind_speed_10m'] as String?,
        uvIndex: json['uv_index'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'time': time,
        'temperature_2m': temperature2m,
        'relative_humidity_2m': relativeHumidity2m,
        'wind_speed_10m': windSpeed10m,
        'uv_index': uvIndex,
      };
}
