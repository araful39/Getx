import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getx/part-06/view/image_picker_controller.dart';
class HomePage06 extends StatefulWidget {
  const HomePage06({super.key});

  @override
  State<HomePage06> createState() => _HomePage06State();
}

class _HomePage06State extends State<HomePage06> {
  ImagePickerController _imagePickerController=Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Image Picker"),
        centerTitle: true,
      ),
      body: Obx(() {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Gallery"),
              CircleAvatar(
              radius:  200,
              backgroundImage: _imagePickerController.imagePathe.isNotEmpty ?
              FileImage(File(_imagePickerController.imagePathe.toString())) : null,
            ),
              TextButton(onPressed: (){
                _imagePickerController.getImage();
              }, child: Text("Pick Image"))
            ],
          ),
        );
      }),
    );
  }
}
