
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/part-04/controller/controller.dart';
class HomePage04 extends StatefulWidget {
  const HomePage04({super.key});

  @override
  State<HomePage04> createState() => _HomePage04State();
}

class _HomePage04State extends State<HomePage04> {
  // double opacityValue=0.5;
  ColorController _colorController=Get.put(ColorController());
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    print("Print");
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Opacity Part"),
      ),
      body: Obx(()=>Column(
        children: [
          Container(
            height: h*0.2,            decoration: BoxDecoration(
            color: Colors.green.withOpacity(_colorController.opacityValue.value),

          ),

          ),

          Container(
            height: h*0.2,            decoration: BoxDecoration(
            color: Colors.red.withOpacity(_colorController.opacityValue.value),

          ),

          ),
          Container(
            height: h*0.2,
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(_colorController.opacityValue.value),

            ),

          ),
          Slider(value: _colorController.opacityValue.value, onChanged: (value){
            _colorController.getOpacity(value);

            // setState(() {
            //
            // });
          }),
        ],
      ),)
    );
  }
}
