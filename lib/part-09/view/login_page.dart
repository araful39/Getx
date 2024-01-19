import 'package:flutter/material.dart';
import 'package:getx/part-09/view/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage09 extends StatefulWidget {
  const LoginPage09({super.key});

  @override
  State<LoginPage09> createState() => _LoginPage09State();
}

class _LoginPage09State extends State<LoginPage09> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login "),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Enter Email", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Enter Password", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () async {
                  final SharedPreferences sp =
                      await SharedPreferences.getInstance();
                  await sp.setString('email', emailController.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage09()));
                },
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text("Login"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
