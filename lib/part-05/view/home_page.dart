import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/part-05/controller/favourite_controller.dart';

class HomePage05 extends StatefulWidget {
  const HomePage05({super.key});

  @override
  State<HomePage05> createState() => _HomePage05State();
}

class _HomePage05State extends State<HomePage05> {
  // List<String> countryName=['Bangladesh','India','Pakisthan','Newziland','UK','Nepal'];
  // List <String> tempList=[];
  FavouriteController _favouriteController = Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    print("Print");
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart add part"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _favouriteController.countryName.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (_favouriteController.tempList.contains(
                      _favouriteController.countryName[index].toString())) {
                    _favouriteController.removeFromTemlist(
                        _favouriteController.countryName[index].toString());
                  } else {
                    _favouriteController.addToTemplist(
                        _favouriteController.countryName[index].toString());
                  }
                },
                title: Text(_favouriteController.countryName[index]),
                subtitle: Text("${index + 1}"),
                trailing: Obx(()=>Icon(Icons.favorite,
                    color: _favouriteController.tempList.contains(
                        _favouriteController.countryName[index].toString())
                        ? Colors.pink
                        : Colors.white),)
              ),
            );
          }),
    );
  }
}
