import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/part-06/view/home_page_06.dart';


void main(){
  runApp(MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage06(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // getPages: AppRoutes.appRoutes(),
    );
  }
}