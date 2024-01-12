import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/part-08/controller/controller.dart';

import 'home_page.dart';


class LoginScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: loginController.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: loginController.email,
                  decoration: InputDecoration(
                    hintText: 'email_hint'.tr,
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Obx(() => TextFormField(
                  obscureText: !loginController.isTrue.value,
                  controller: loginController.password,
                  decoration: InputDecoration(
                    suffixIcon: TextButton(
                      onPressed: () {
                        loginController.togglePasswordVisibility();
                      },
                      child: loginController.isTrue.value
                          ? Text("Show")
                          : Text("Hide"),
                    ),
                    hintText: 'pass_hint'.tr,
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                )),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (loginController.formKey.currentState!.validate()) {
                      if (loginController.email.text == 'example@email.com' &&
                          loginController.password.text == 'password') {
                        Get.to(HomePage());
                      } else {
                        Get.snackbar(
                          'Error',
                          'Invalid email or password',
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.red,
                          colorText: Colors.white,
                        );
                      }
                    }
                  },
                  child: Text('login'.tr),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
