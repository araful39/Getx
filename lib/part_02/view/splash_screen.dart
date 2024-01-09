
import 'package:flutter/material.dart';
import 'package:getx/part_02/utills/utills.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  showD(String text){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text(text),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Text("SplashScreen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Utills.toastMassage("Md Ariful islam");
          // showD("Hello");
          Utills.snackBar("Md Araful islam", "Hello");
        },
      ),
    );
  }
}
