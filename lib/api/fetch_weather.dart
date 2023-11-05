import 'dart:convert';
import 'package:weather_app/models/weather/weather.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather/weather_data.dart';

class FetchWeatherAPI {
  WeatherData? weatherData;

  Future<WeatherData> processData(latitude, longitude) async {
    var response = await http.get(Uri.parse(apiURL(latitude, longitude)));
    var jsonString = jsonDecode(response.body);
    weatherData = WeatherData(
      Weather.fromJson(jsonString));

    return weatherData!;
  }
}

String apiURL(var lat, var lon) {
  String url;

  url = "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&hourly=temperature_2m,relative_humidity_2m,wind_speed_10m,uv_index";
  
  return url;
}