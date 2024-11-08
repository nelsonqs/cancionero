import 'package:flutter/material.dart';
import 'package:multi/core/app_color.dart';
import 'package:multi/core/app_style.dart';

enum AppTheme { lightTheme, darkTheme }

class AppThemes {
  const AppThemes._();

  static final appThemeData = {
    AppTheme.lightTheme: ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: const Color(0xFFF4F4F4),
      scrollbarTheme: ScrollbarThemeData(
        thumbVisibility: WidgetStateProperty.all(true),
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
          backgroundColor: WidgetStateProperty.all<Color>(
            LightThemeColor.accent,
          ),
        ),
      ),
      
      listTileTheme: const ListTileThemeData(
        textColor: Colors.blueGrey,
      ),
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all<Color>(
          AppColors.white,
        ),
        backgroundColor: WidgetStateProperty.all<Color>(
          LightThemeColor.accent,
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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
