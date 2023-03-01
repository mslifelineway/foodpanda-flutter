import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodpanda_sellers_app/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.pushNamed(context, AppRoutes.auth);
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Image.asset("assets/images/splash.jpg"),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                    "Sell Food Online",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 40,
                        fontFamily: "Signatra",
                        letterSpacing: 3),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
