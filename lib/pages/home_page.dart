import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Tutorial"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                
                child: ListTile(
                  title: Text("GetX 1"),
                  subtitle: Text("Get X First Card"),
                  onTap: (){
                    Get.defaultDialog(
                      title: "Dialog Box",
                      middleText: "Are you sure u want to do it ? ",
                      // textConfirm: "ok",
                      // textCancel: "cancel"
                      contentPadding: EdgeInsets.all(10),
                      titlePadding: EdgeInsets.all(20),
                      confirm: TextButton(onPressed: (){
                        // Navigator.pop(context);
                        Get.back();
            
                      }, child: Text("Ok")),
                      cancel: TextButton(onPressed: (){}, child: Text("Cancel")),

                      // to write multi line text
                      content: Column(
                        children: [
                          Text("Hello world"),
                          Text("Hello world"),
                          Text("Hello world"),
                          Text("Hello world"),
                          Text("Hello world"),
                          Text("Hello world"),
                          Text("Hello world"),
                        ],
                      )
                    );

                    // Get.bottomSheet();
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                
                child: ListTile(
                  title: Text("GetX 2"),
                  subtitle: Text("Get X Second Card"),
                  onTap: (){
                    Get.defaultDialog(
                      title: "Dialog Box",
                      middleText: "Are you sure u want to do it ? ",
                      // textConfirm: "ok",
                      // textCancel: "cancel"
                      contentPadding: EdgeInsets.all(10),
                      titlePadding: EdgeInsets.all(20),
                      confirm: TextButton(onPressed: (){
                        // Navigator.pop(context);
                        Get.back();
            
                      }, child: Text("Ok")),
                      cancel: TextButton(onPressed: (){}, child: Text("Cancel"))
            
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar("Notification", "You are not here",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.redAccent,
        margin: EdgeInsets.all(20),
        icon:Icon(Icons.add)
        );
      }),
    );
  }
}