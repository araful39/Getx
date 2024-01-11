import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/part-06/view/home_page_06.dart';
import 'package:getx/part-07/res/getx_localization/languages.dart';
import 'package:getx/part-07/view/splash_screen.dart';


void main(){
  runApp(MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen07(),
      translations: Languages(),
      locale: Locale('en' ,"US"),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // getPages: AppRoutes.appRoutes(),
    );
  }
}