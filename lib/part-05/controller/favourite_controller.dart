import 'package:get/get.dart';

class FavouriteController extends GetxController{

 RxList<String> countryName=['Bangladesh','India','Pakisthan','Newziland','UK','Nepal'].obs;
 RxList <dynamic> tempList=[].obs;

  addToTemplist(String value){
    tempList.add(value);
  }
  removeFromTemlist(String value){
   tempList.remove(value);
  }
}