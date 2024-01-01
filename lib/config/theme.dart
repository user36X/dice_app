import 'package:flutter/material.dart';

class AppTheme {
  static const Color colorSeed = Color.fromRGBO(15, 147, 249, 1);
  final bool isDarkMode;

  const AppTheme({required this.isDarkMode});

  ThemeData get getTheme => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: AppTheme.colorSeed,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        listTileTheme: const ListTileThemeData(
          iconColor: AppTheme.colorSeed,
        ),
      );
}
