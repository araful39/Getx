import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/part_02/view/home_page.dart';
class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 02"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage01()));
        Get.off(HomePage01());
        },child: Text("Go to HomePage "),),
      ),
    );
  }
}
