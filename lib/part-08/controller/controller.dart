import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  final isTrue = true.obs;

  void togglePasswordVisibility() {
    isTrue.value = !isTrue.value;
  }
}
