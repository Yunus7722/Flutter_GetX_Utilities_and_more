import 'package:flutter/material.dart';
import 'package:flutter_getx_remaining_tutorials/pages/first_page.dart';
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
                  title: Text("GetX Dialog Box"),
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

                    
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                
                child: ListTile(
                  title: Text("GetX BottomSheet"),
                  subtitle: Text("Get X Second Card"),
                  // onTap: (){
                  //   Get.defaultDialog(
                  //     title: "Dialog Box",
                  //     middleText: "Are you sure u want to do it ? ",
                  //     // textConfirm: "ok",
                  //     // textCancel: "cancel"
                  //     contentPadding: EdgeInsets.all(10),
                  //     titlePadding: EdgeInsets.all(20),
                  //     confirm: TextButton(onPressed: (){
                  //       // Navigator.pop(context);
                  //       Get.back();
            
                  //     }, child: Text("Ok")),
                  //     cancel: TextButton(onPressed: (){}, child: Text("Cancel"))
            
                  //   );
                  // },
                  onTap: (){
                    Get.bottomSheet(
                      Container(
                        
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          
                          children: [
                            ListTile(
                              leading: Icon(Icons.light_mode),
                              title: Text("Light Mode"),
                              onTap: (){
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.dark_mode),
                              title: Text("Dark Mode"),
                              onTap: (){
                                Get.changeTheme(ThemeData.dark());
                              },
                            )
                          ],
                        ),
                      )
                    );
                  },
                ),
              ),
            ),
            Container(    
              child: TextButton(onPressed: (){
                Get.to(FirstPage());
              }, child: Text("Go to First page")),
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