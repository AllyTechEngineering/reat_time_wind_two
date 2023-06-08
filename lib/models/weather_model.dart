import '../services/location.dart';
import '../services/network_data.dart';
import '../utilities/constants.dart';

const weatherApiUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    /// await for methods that return future
    Location location = Location();
    await location.getCurrentLocation();

    /// Get location data
    ///&units=metric change the temperature metric
    NetworkData networkHelper = NetworkData('$weatherApiUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=imperial');
    var tempApiValue = ('$weatherApiUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=imperial');
    print('This is the API call: $tempApiValue');
    var weatherData = await networkHelper.getData();
    print('This is the weatherData in the WeatherModel Class: $weatherData');
    return weatherData;
  }
}
