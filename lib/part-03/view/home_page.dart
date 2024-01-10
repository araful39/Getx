import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/part-03/controllar/controllar.dart';
import 'package:getx/part_01/controller.dart';
class HomePage3 extends StatefulWidget {
  const HomePage3({super.key});

  @override
  State<HomePage3> createState() => _HomePage3State();
}
// var  counter=1;

class _HomePage3State extends State<HomePage3> {
 CounterControllar _conter=Get.put(CounterControllar());
  @override
  Widget build(BuildContext context) {
    print("Restartt");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Part"),
      ),
      body: Center(child: Obx(()=>Text("Counter : ${_conter.counter}",style: TextStyle(fontSize: 50),))),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _conter.getIncreement();

          // counter++;
          // setState(() {
          //   print("Print 2");
          // });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
