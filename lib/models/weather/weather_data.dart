import 'package:weather_app/models/weather/weather.dart';

class WeatherData {
  final Weather? current;

  WeatherData([this.current]);

  Weather getCurrentWeather() => current!;
}