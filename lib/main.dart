import 'package:flutter/material.dart';
import 'package:foodpanda_sellers_app/authentication/auth_screen.dart';
import 'package:foodpanda_sellers_app/splash_screen/splash_screen.dart';
import 'package:foodpanda_sellers_app/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.root,
      routes: {
        AppRoutes.root: (context) => const SplashScreen(),
        AppRoutes.auth: (context) => const AuthScreen(),
      },
    );
  }
}
