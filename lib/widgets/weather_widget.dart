import 'package:flutter/material.dart';
import 'package:weather_app/models/weather/weather.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;
  const WeatherWidget({Key? key, required this.weather})
  :super(key: key);

  /*@override
  Widget build(BuildContext context) {
    return Container(
      child: Text('${weather.hourly.values.elementAt(1)[DateTime.now().hour]} °C')
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Text(
                "${weather.hourly.values.elementAt(0)[DateTime.now().hour]}h ${weather.hourly.values.elementAt(1)[DateTime.now().hour]}°C",
                style: const TextStyle(fontSize: 12),
                textAlign: TextAlign.left,
              ),
            )
          ],
        )
      ],
    );
  }
}