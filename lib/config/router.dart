import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:dice_app/presentation/screens/screens.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    )
  ],
);
