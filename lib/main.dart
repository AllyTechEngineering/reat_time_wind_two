import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:real_time_wind_two/screens/get_lat_and_lon_screen.dart';
import 'package:real_time_wind_two/screens/weather_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
// FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const RealTimeWindApp());
}

class RealTimeWindApp extends StatefulWidget {
  const RealTimeWindApp({super.key});

  @override
  State<RealTimeWindApp> createState() => _RealTimeWindAppState();
}

class _RealTimeWindAppState extends State<RealTimeWindApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetLatAndLonScreen(),
    );
  }
} //class RealTimeWindApp
