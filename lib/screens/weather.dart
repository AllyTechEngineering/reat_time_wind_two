import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  late double? latitude = 0.0;
  late double? longitude = 0.0;
  late int? temperature = 0;
  late double? windSpeed = 0.0;
  late int? windDirection = 0;
  late int? windGust = 0;
  // late int? pressure = 0;
  // late String country = 'None';
  // late String city = 'None';
  WeatherModel weatherModel = WeatherModel();

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  /// variable weatherData contain response from the API
  /// to fetch data check the response to get the way the data structured
  getLocationData() async {
    var weatherData = await weatherModel.getLocationWeather();
    print('This is the weatherData in getLocationData method: $weatherData');
    setState(() {
      latitude = weatherData['coord']['lat'];
      longitude = weatherData['coord']['lon'];
      windSpeed = weatherData['wind']['speed'];
      windGust = weatherData['wind']['gust'];
      windDirection = weatherData['wind']['deg'];
      double temp = weatherData['main']['temp'];
      temperature = temp.toInt();
      // pressure = weatherData['main']['pressure'];
      // country = weatherData['sys']['country'];
      // city = weatherData['name'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Latitude: $latitude',
              style: TextStyle(
                fontFamily: 'Spartan MB',
                fontSize: 30.0,
              ),
            ),
            Text(
              'Longitude: $longitude',
              style: TextStyle(
                fontFamily: 'Spartan MB',
                fontSize: 30.0,
              ),
            ),
            Text(
              'Temperature: $temperature°  ',
              style: TextStyle(
                fontFamily: 'Spartan MB',
                fontSize: 30.0,
              ),
            ),
            Text(
              'Wind Speed: $windSpeed  ',
              style: TextStyle(
                fontFamily: 'Spartan MB',
                fontSize: 30.0,
              ),
            ),
            Text(
              'Wind Direction: $windDirection  ',
              style: TextStyle(
                fontFamily: 'Spartan MB',
                fontSize: 30.0,
              ),
            ),
            Text(
              'Wind Gust: $windGust  ',
              style: TextStyle(
                fontFamily: 'Spartan MB',
                fontSize: 30.0,
              ),
            ),
            // Text(
            //   'Pressure: $pressure',
            //   style: TextStyle(
            //     fontFamily: 'Spartan MB',
            //     fontSize: 30.0,
            //   ),
            // ),
            // Text(
            //   'City: $city  ',
            //   style: TextStyle(
            //     fontFamily: 'Spartan MB',
            //     fontSize: 40.0,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
