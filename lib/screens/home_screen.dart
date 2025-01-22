import 'dart:math';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import '../widgets/weathers_gridview.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  String? searchedCity;
  String? temperature;
  String? condition;

  // Random weather data generator
  final List<String> weatherConditions = ['Sunny', 'Cloudy', 'Rainy', 'Snowy'];
  final Random random = Random();

  void generateRandomWeather(String cityName) {
    setState(() {
      searchedCity = cityName;
      temperature =
      '${random.nextInt(30) - 10}°C'; // Random temperature (-10°C to 20°C)
      condition = weatherConditions[random.nextInt(weatherConditions.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Text('Weather',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        leading: Icon(Icons.format_list_numbered,color: Colors.white,),
        actions: [
          Icon(Icons.add_box_rounded,color: Colors.white,),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onSubmitted: (value) {
                  if (value.isNotEmpty) {
                    generateRandomWeather(value);
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                  hintText: "Search city...",
                  hintStyle: const TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.grey[800],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            // Main City Weather Display
            if (searchedCity != null)
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        searchedCity!,
                        style: const TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Today',
                        style: TextStyle(fontSize: 18, color: Colors.white54),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        temperature ?? '',
                        style: const TextStyle(
                          fontSize: 64,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        condition ?? '',
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Divider(color: Colors.white24),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Forecast for today',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                        ],
                      ),
                      weathersGridView(),
                    ],
                  ),
                ),
              ),
            if (searchedCity == null)
              const Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Text(
                        'Enter a city name to see the weather',
                        style: TextStyle(color: Colors.yellow, fontSize: 16,),
                      ),
                      Icon(WeatherIcons.day_rain_mix,color: Colors.orangeAccent,),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


