import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude = 0.0;
  late double longitude = 0.0;

  // String apiKey = 'your API key';
  // late int status;
  Future<void> getCurrentLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position); //here you will get your Latitude and Longitude
    latitude = position.latitude;
    longitude = position.longitude;
  }
  // Future<Position?> getCurrentLocation() async {
  //   LocationPermission permission;
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.deniedForever) {
  //       return Future.error('Location Not Available');
  //     }
  //   } else {
  //     throw Exception('Error');
  //   }
  //   return await Geolocator.getCurrentPosition();
  // } //Future
} //class
/// async and await are used for time consuming tasks
/// Get your current loatitude and longitude
/// Location accuracy depends on the type of app high,low ,
/// high accuracy also result in more power consumed
//   Future<void> getCurrentLocation() async {
//     try {
//       Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//
//       latitude = position.latitude;
//       longitide = position.longitude;
//     } catch (e) {
//       print(e);
//     } //catch
//   } //Future
// } //class
