import 'package:flutter/material.dart';
import 'package:real_time_wind_two/screens/weather_screen.dart';
import '../utilities/constants.dart';
import '/utilities/widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';

class GetLatAndLonScreen extends StatefulWidget {
  static String id = 'get_lat_and_lon_screen';
  const GetLatAndLonScreen({Key? key}) : super(key: key);

  @override
  State<GetLatAndLonScreen> createState() => _GetLatAndLonScreenState();
}

class _GetLatAndLonScreenState extends State<GetLatAndLonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Lat and Lon'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: kStyleElevatedButton,
                    onPressed: () {},
                    child: const AutoSizeText(
                      'Enter the Location Latitude',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(kFontColor),
                        fontSize: kFontHeightSmall,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: kStyleElevatedButton,
                    onPressed: () {},
                    child: const AutoSizeText(
                      'Enter the Location Longitude',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(kFontColor),
                        fontSize: kFontHeightSmall,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: kStyleElevatedButton,
                    onPressed: () {},
                    child: const AutoSizeText(
                      'TBD',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(kFontColor),
                        fontSize: kFontHeightSmall,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: kStyleElevatedButton,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WeatherScreen()),
                      );
                    },
                    child: const AutoSizeText(
                      'Got to Data Screen',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(kFontColor),
                        fontSize: kFontHeightSmall,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
} //class _GetLatAndLonScreenState
// body: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Center(
// child: Text('This is the screen where the user inputs Lat and Lon and selects go to data'),
// ),
// ),
