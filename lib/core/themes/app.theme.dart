import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// TODO: terminar de definir la paleta de colores
class AppTheme {
  static final ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFF2F2F2),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFF2F2F2),
      foregroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    scaffoldBackgroundColor: const Color(0xFFF2F2F2),
    cardColor: const Color(0xFFF2F2F2),
    iconTheme: const IconThemeData(color: Colors.black),
    dividerColor: Colors.transparent,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      background: Color(0xFF103aa2),
      primary: Color(0xFF202538),
      secondary: Colors.white,
      onPrimary: Color(0xFF0c101c),
      onSecondary: Colors.white,
      error: Colors.black,
      onBackground: Colors.black,
      onError: Colors.black,
      onSurface: Colors.black,
      surface: Colors.black,
    ),
  );

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xFF103aa2),
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }
}
