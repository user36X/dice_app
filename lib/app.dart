import 'package:flutter/material.dart';
import 'package:dice_app/config/theme.dart';
import 'package:dice_app/config/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        theme: const AppTheme(isDarkMode: false).getTheme,
        title: 'dice app',
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      );
}
