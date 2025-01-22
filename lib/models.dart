import 'package:flutter/cupertino.dart';
import 'package:weather_icons/weather_icons.dart';

class Weather{
  final String title;
  final IconData icon;
  final String degree;

  Weather({required this.title, required this.icon, required this.degree});

}

final List<Weather> weathersList = [
  Weather(title: 'Now', icon: WeatherIcons.snowflake_cold, degree: '2°C'),
  Weather(title: '15:00', icon: WeatherIcons.cloud, degree: '1°C'),
  Weather(title: '16:00', icon: WeatherIcons.rain, degree: '0°C'),
  Weather(title: '17:00', icon: WeatherIcons.sunset, degree: '20°C'),
  Weather(title: '18:00', icon: WeatherIcons.day_cloudy_high, degree: '2°C'),
  Weather(title: '19:00', icon: WeatherIcons.cloud, degree: '1°C'),
  Weather(title: '20:00', icon: WeatherIcons.rain, degree: '0°C'),
  Weather(title: '21:00', icon: WeatherIcons.sunset, degree: '20°C'),
  Weather(title: '22:00', icon: WeatherIcons.snowflake_cold, degree: '2°C'),
  Weather(title: '23:00', icon: WeatherIcons.cloud, degree: '1°C'),
  Weather(title: '00:00', icon: WeatherIcons.rain, degree: '0°C'),
  Weather(title: '01:00', icon: WeatherIcons.sunset, degree: '20°C'),
];