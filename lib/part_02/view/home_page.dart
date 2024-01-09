import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/part_02/view/page_one.dart';
class HomePage01 extends StatefulWidget {
  const HomePage01({super.key});

  @override
  State<HomePage01> createState() => _HomePage01State();
}

class _HomePage01State extends State<HomePage01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("HomePage"),
      ),
      body: Column(

        children: [
          ElevatedButton(onPressed: (){
            Get.defaultDialog(
              title: "Alert ! ",
              middleText: "Are you delete",
              confirm: ElevatedButton(onPressed:(){
                Get.back();
              },child: Text("Ok")),

              cancel:ElevatedButton(onPressed:(){
                Get.back();
              },child: Text("Cancel")),
            );
          }, child: Text("ShowDialoge")),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: (){
            Get.bottomSheet(
              Container(
             decoration: BoxDecoration(

               color: Colors.indigo,
               borderRadius: BorderRadius.circular(30)
             ),
                // height: 300,
                child:Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Card(

                      child: ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text("Light"),
                        onTap: (){
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                    ),
                    Card(
                      child: ListTile(
                       leading: Icon(Icons.dark_mode),
                        title: Text("Dark"),
                        onTap: (){
                         Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ),
                  ],
                ),
              )
            );
          }, child: Text("BottomSheet")),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>PageOne()));
           Get.to(PageOne(name: "Md Araful islam"));
          }, child: Text("Go to Page 1")),
          Container(
            color: Colors.red,
            height: MediaQuery.of(context).size.height*0.4,
          )
        ],
      ),
    );
  }
}
