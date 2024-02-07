import 'package:cancionero/core/app_color.dart';
import 'package:cancionero/core/app_style.dart';
import 'package:flutter/material.dart';

enum AppTheme { lightTheme, darkTheme }

class AppThemes {
  const AppThemes._();

  static final appThemeData = {
    AppTheme.lightTheme: ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: LightThemeColor.primaryLight,
      scrollbarTheme: ScrollbarThemeData(
        thumbVisibility: MaterialStateProperty.all(true),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: LightThemeColor.accent,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black45),
        centerTitle: true,
        titleTextStyle: h2Style,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            LightThemeColor.accent,
          ),
        ),
      ),
      /*filledButtonTheme: FilledButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            LightThemeColor.accent,
          ),
        )
      ),*/
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColors.white,
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          LightThemeColor.accent,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      )),
      hintColor: Colors.black45,
      inputDecorationTheme: InputDecorationTheme(
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        enabledBorder: textFieldStyle,
        focusedBorder: textFieldStyle,
        filled: true,
        contentPadding: const EdgeInsets.all(20),
        fillColor: Colors.white,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: LightThemeColor.accent,
      ),
      textTheme: const TextTheme(
        displayLarge: h1Style,
        displayMedium: h2Style,
        displaySmall: h3Style,
        headlineMedium: h4StyleLight,
        headlineSmall: h5StyleLight,
        bodyLarge: bodyTextLight,
        titleMedium: subtitleLight,
      ),
      iconTheme: const IconThemeData(color: Colors.black45),
      bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
    )
  };
}
