import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx/part_02/ress/colors/app_color.dart';

class Utills{

  static void fieldFucusChange(BuildContext context,FocusNode current,FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
  static toastMassage(String massage){
    Fluttertoast.showToast(msg: massage,
    backgroundColor:AppColor.backround,
      gravity:ToastGravity.CENTER,

    );
  }
  static snackBar(String title,String massage){
    Get.snackbar(
      title,massage
    );
  }
}