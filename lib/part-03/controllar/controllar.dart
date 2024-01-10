import 'package:get/get.dart';

class CounterControllar extends GetxController{

// RxString counter="Raju".obs;
RxInt counter=1.obs;

  getIncreement(){
    counter++;
    // update();
  }

}