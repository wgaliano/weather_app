class Hourly {
  List<String>? time;
  List<num>? temperature2m;
  List<int>? relativeHumidity2m;
  List<num>? windSpeed10m;
  List<num>? uvIndex;

  Hourly({
    this.time,
    this.temperature2m,
    this.relativeHumidity2m,
    this.windSpeed10m,
    this.uvIndex,
  });

  factory Hourly.fromJson(Map<String, dynamic> json) => Hourly(
        time: json['time'] as List<String>?,
        temperature2m: json['temperature_2m'] as List<num>?,
        relativeHumidity2m: json['relative_humidity_2m'] as List<int>?,
        windSpeed10m: json['wind_speed_10m'] as List<num>?,
        uvIndex: json['uv_index'] as List<num>?,
      );

  Map<String, dynamic> toJson() => {
        'time': time,
        'temperature_2m': temperature2m,
        'relative_humidity_2m': relativeHumidity2m,
        'wind_speed_10m': windSpeed10m,
        'uv_index': uvIndex,
      };
}
