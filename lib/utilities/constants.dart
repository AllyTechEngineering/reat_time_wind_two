import 'package:flutter/material.dart';

const BoxDecoration styleBoxDecoration = (BoxDecoration(
  gradient: LinearGradient(
    colors: [Color(kDarkestBlue), Color(kMediumBlue)],
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.black,
      offset: Offset(5.0, 5.0),
      blurRadius: 10.0,
      spreadRadius: 2.0,
    ),
  ],
  color: Color(kDarkestBlue),
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(20.0),
    bottomRight: Radius.circular(0.0),
    topLeft: Radius.circular(0.0),
    bottomLeft: Radius.circular(20.0),
  ),
));

const double kContainerHeight = 110.0;
const double kContainerFontHeight = 14.0;
const double kAppBarFontHeight = 20.0;
const String kFontTypeForApp = 'Roboto-Thin';
const double kFontHeightMedium = 14.0;
const double kFontHeightSmall = 12.0;
const double kFontHeightLarge = 20.0;
const int kFontColor = 0xFFFFFFFF;
const int kIconColor = 0xFFFF0000;
const String kHsaYouTubeUrl = 'https://www.youtube.com/channel/UC5ymqSnOM51K7USJ__lIz8w';
const String kHsaNewsLetterUrl = 'http://www.huestonsailing.com/HSA_Newsletter.html';
const double kSocialMediaIconHeight = 50.0;
const double kSocialMediaIconWidth = 135.0;
const double kSocialMediaFontHeight = 10.0;
const double iconHeightValue = 60.0;
const double buttonRadiusValue = 12.0;
const double kButtonRowSpacingTop = 1.0;
const double buttonRowSpacingBottom = 20.0;
const double kWidthElevatedButton = 110.0;
const double kHeightElevatedButton = 65.0;
const double kWidthSpringResultsElevatedButton = 200.0;
const double kHeightSpringResultsElevatedButton = 75.0;
const double logoHeightValue = 200.0;
const double logoWidthValue = 300.0;
const int kDarkestBlue = 0xFF0B2447;
const int kDarkBlue = 0xFF19376D;
const int kMediumBlue = 0xFF576CBC;
const int scaffoldColor = 0xFFA5D7E8;
const int kLightestBlue = 0xFFA5D7E8;
const int lightBlue = 0xFFFFFFFF;
const double fontSizeValue = 16.0;
const apiKey = 'cdc0b1434b7f3e27f4b1b498bd79fe2d';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';
