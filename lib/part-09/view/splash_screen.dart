import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/part-09/view/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

String? finalEmail;

class SplashScreen09 extends StatefulWidget {
  const SplashScreen09({super.key});

  @override
  State<SplashScreen09> createState() => _SplashScreen09State();
}

class _SplashScreen09State extends State<SplashScreen09> {
  Future getData() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    var obEmail = sp.getString('email');
    setState(() {
      finalEmail = obEmail;
    });
  }

  @override
  void initState() async {
   await getData();
    await getData().whenComplete(() async {
      Timer(
          Duration(seconds: 3),
          () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      finalEmail.toString().isEmpty ? LoginPage09() : HomePage09())));
    });
    setState(() {

    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Splash Screen"),
    );
  }
}
