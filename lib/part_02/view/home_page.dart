import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/part_02/view/page_one.dart';
class HomePage01 extends StatefulWidget {
  const HomePage01({super.key});

  @override
  State<HomePage01> createState() => _HomePage01State();
}

class _HomePage01State extends State<HomePage01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("HomePage"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>PageOne()));
       Get.to(PageOne());
        }, child: Text("Go to Page 1")),
      ),
    );
  }
}
