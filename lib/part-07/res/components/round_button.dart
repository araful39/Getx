import 'package:flutter/material.dart';
import 'package:getx/part-07/res/colors/app_color.dart';

class RoundButton extends StatelessWidget {
  RoundButton(
      {super.key,
      required this.loading,
      required this.title,
    this.height=60,
       this.width=50,
      required this.onPress,
       this.textColor=AppColor.primaryColor,
      this.buttonColor=AppColor.primaryColor});
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: loading? Center(child: CircularProgressIndicator()): Center(
        child: Text(title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white)),
      ),
    );
  }
}
