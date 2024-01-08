import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/page/controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
var counter=0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
          children: [
Obx(() =>             Text("Counter: ${counter}",style: TextStyle(color: Colors.red,fontSize: 50),),
),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: ()=>counter++, child: Text("Tap +")),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}

