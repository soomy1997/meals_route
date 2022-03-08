import 'package:flutter/material.dart';

const white = Color(0xFFFFFFFF);
const grey = Color(0xFF424242);
const lightGrey = Color.fromARGB(255, 210, 206, 206);
const red = Color(0xFFF44336);

ThemeData theme() {
  return ThemeData(
    primarySwatch: Colors.red,
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
//There are 6 headlines (headline1 to headline6)
//and they are the largest text to put on the screen.
// They should be reserved for short and important texts such as:
    //      titles
    //      numerals
    headline1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 36,
    ),
    headline2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    headline3: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    headline4: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
    headline5: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    headline6: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
// There are 2 body types (bodyText1 and bodyText2).
// They are smaller than subtitles
// should typically be used for longer texts, such as description.
    bodyText1: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      height: 1.75,
      fontSize: 12,
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: 10,
    ),
  );
}
