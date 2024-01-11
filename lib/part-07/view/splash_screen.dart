import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx/part-07/res/components/genarel_exception.dart';
import 'package:getx/part-07/res/components/internet_exception_widget.dart';
import 'package:getx/part-07/res/components/round_button.dart';
class SplashScreen07 extends StatefulWidget {
  const SplashScreen07({super.key});

  @override
  State<SplashScreen07> createState() => _SplashScreen07State();
}

class _SplashScreen07State extends State<SplashScreen07> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            RoundButton(loading: false, title:"Login", onPress: (){},width: 200,),
            SizedBox(
              height: 10,
            ),
            RoundButton(loading: false, title:"Sign", onPress: (){},width: 200,)
          ],
        ),
      ),
    );
  }
}
