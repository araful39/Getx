import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getx/part_02/utills/utills.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("SplashScreen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Utills.toastMassage("Md Ariful islam");
        },
      ),
    );
  }
}
