import 'package:flutter/material.dart';

const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.5;
const StatusTextSize = 12.3;

const String FontDefaultName = 'Montserrat';
const String NoricanName = 'Norican';

const ModuleTextStyle = TextStyle(
    fontFamily: FontDefaultName,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Color.fromRGBO(20, 20, 20, 1.0));

const StatusTextStyle = TextStyle(
    fontFamily: FontDefaultName,
    fontWeight: FontWeight.w600,
    fontSize: LargeTextSize,
    color: Color.fromRGBO(210, 210, 210, 1.0));

const HeaderTextStyle = TextStyle(
    fontFamily: NoricanName,
    fontWeight: FontWeight.w600,
    fontSize: 25,
    color: Color.fromRGBO(190, 190, 190, 1));

const DarkHeaderTextStyle = TextStyle(
    fontFamily: FontDefaultName,
    fontWeight: FontWeight.w600,
    fontSize: 19,
    color: Color.fromRGBO(10, 10, 10, 1));

const DarkHeader3TextStyle = TextStyle(
    fontFamily: FontDefaultName,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Color.fromRGBO(10, 10, 10, 1));

const FocusTextStyle = TextStyle(
    fontFamily: FontDefaultName,
    fontWeight: FontWeight.w600,
    fontSize: BodyTextSize,
    color: Color.fromRGBO(20, 20, 20, 1.0));

final darkTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF212121),
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black12,
);

final lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  brightness: Brightness.light,
  backgroundColor: const Color(0xFFE5E5E5),
  accentColor: Colors.black,
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.white54,
);
