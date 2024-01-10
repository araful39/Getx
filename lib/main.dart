import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/part-03/view/home_page.dart';
import 'package:getx/part-04/view/home_page.dart';
import 'package:getx/part-05/view/home_page.dart';
import 'package:getx/part_02/ress/routes/routes.dart';
import 'package:getx/part_02/view/home_page.dart';
import 'package:getx/part_02/view/splash_screen.dart';

void main(){
  runApp(MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage05(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // getPages: AppRoutes.appRoutes(),
    );
  }
}