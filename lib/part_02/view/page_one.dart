import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/part_02/view/page_two.dart';
class PageOne extends StatefulWidget {
  final String name;
   PageOne({super.key, required this.name});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 01 ${widget.name}}"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>PageTwo()));
          Get.to(PageTwo());
        }, child: Text("Go to page 02")),
      ),
    );
  }
}
