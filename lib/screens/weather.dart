import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  List<dynamic> windStateList = [];
  late dynamic? latitude = 0.0;
  late dynamic? longitude = 0.0;
  late dynamic? city = 'None';
  late dynamic? temperature = 0;
  late dynamic? windSpeed = 'None';
  late dynamic? windDirection = 0;
  late dynamic? windGust = 0;
  late dynamic? pressure = 0;
  late dynamic? country = 'None';
  int degreeSymbol = 0x00B0;
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
      city = weatherData['name'];
      country = weatherData['sys']['country'];
      windSpeed = weatherData['wind']['speed'];
      // windSpeed = windSpeedTemp.toString();
      windGust = weatherData['wind']['gust'];
      windDirection = weatherData['wind']['deg'];
      temperature = weatherData['main']['temp'];
      // temperature = temp.toInt();
      pressure = weatherData['main']['pressure'];
    });
    windStateList.add('Latitude: $latitude');
    windStateList.add('Longitude: $longitude');
    windStateList.add('City: $city');
    windStateList.add('Country: $country');
    windStateList.add('Wind Speed: $windSpeed MPH');
    windStateList.add('Wind Gust: $windGust MPH');
    windStateList.add('Wind Direction: $windDirection\u00B0');
    windStateList.add('Temperature: $temperature\u2109');
    windStateList.add('Barometric Pressure: $pressure mb');
    print('This is the windStateList: $windStateList');
  } //getLocationData

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real Time Wind Report'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: windStateList.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1, color: Colors.black),
                ),
              ),
              child: Text(
                windStateList[index].toString(),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(color: Colors.black);
          },
        ),
      ),
    );
  } //Widget build
} //class _WeatherState
