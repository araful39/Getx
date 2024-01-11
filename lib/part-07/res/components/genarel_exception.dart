

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/part-07/res/colors/app_color.dart';

class GenarelExeptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  GenarelExeptionWidget({super.key, required this.onPress});

  @override
  State<GenarelExeptionWidget> createState() => _GenarelExeptionWidgetState();
}

class _GenarelExeptionWidgetState extends State<GenarelExeptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Icon(
            Icons.cloud_off,
            color: AppColor.redColor,
          ),
          SizedBox(
            height: Get.height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("genarel_exception".tr)),
          ),
          SizedBox(
            height: Get.height * 0.1,
          ),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              width: Get.width * 0.3,
              height: Get.height * 0.05,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text("Retry",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white))),
            ),
          )
        ],
      ),
    );
  }
}
