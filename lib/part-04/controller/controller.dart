import 'package:get/get.dart';

class ColorController extends GetxController{
  RxDouble opacityValue=0.0.obs;
getOpacity(double value){
  opacityValue.value=value;
}
}