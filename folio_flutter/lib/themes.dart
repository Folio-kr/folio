import 'package:flutter/material.dart';
import 'package:folio_flutter/styles.dart';


ThemeData FolioLightTheme = ThemeData.light().copyWith(
  primaryColor: Color(0xFF264653),
  accentColor: Color(0xFF2a9d8f),
  appBarTheme: AppBarTheme(color: Color(0xFF264653)),
  textTheme: TextTheme(
    headline6: TextStyles.h1,
    subtitle1: TextStyles.body1,
    subtitle2: TextStyles.body2,
  ),
  textButtonTheme: TextButtonThemeData(),
  outlinedButtonTheme: OutlinedButtonThemeData(),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.blue,
    onSurface: Colors.white,
  )),
);

ThemeData FolioDarkTheme = ThemeData.dark().copyWith(
  primaryColor: Color(0xFF264653),
  accentColor: Color(0xFF2a9d8f),
  appBarTheme: AppBarTheme(color: Color(0xFF264653)),
  textTheme: TextTheme(
    headline6: TextStyles.h1.copyWith(color: Colors.white),
    subtitle1: TextStyles.body1.copyWith(color: Colors.white),
    subtitle2: TextStyles.body2.copyWith(color: Colors.white),
  ),
  textButtonTheme: TextButtonThemeData(),
  outlinedButtonTheme: OutlinedButtonThemeData(),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: Colors.blue,
    onPrimary: Colors.white,
    onSurface: Colors.white,
  )),
);