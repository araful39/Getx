import 'package:flutter/material.dart';
import 'package:getx/part-09/view/login_page.dart';
import 'package:getx/part-09/view/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage09 extends StatefulWidget {
  const HomePage09({super.key});

  @override
  State<HomePage09> createState() => _HomePage09State();
}

class _HomePage09State extends State<HomePage09> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () async {
              final SharedPreferences sp =
                  await SharedPreferences.getInstance();
              await sp.remove('email');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage09()));
            },
            child: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Text("This is HomePage 09 ${finalEmail}"),
      ),
    );
  }
}
