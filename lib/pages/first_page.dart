import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[ Container(
          
          child: Align(
            alignment: Alignment.center,
            child: Text("Hello World")),
      
            //using getX to get the mediaquery height and width
          height: Get.height * 0.3,
          width: Get.width,
          color: Colors.redAccent,
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
            
            child: Align(
              alignment: Alignment.center,
              child: Text("Hello World")),

              //using getX to get the mediaquery height and width
            height: Get.height * 0.3,
            width: Get.width * 0.4,
            color: Colors.blueAccent,
      ),
       Container(
        
        child: Align(
          alignment: Alignment.center,
          child: Text("Hello World")),

          //using getX to get the mediaquery height and width
        height: Get.height * 0.3,
        width: Get.width * 0.5,
        color: Color.fromARGB(255, 240, 240, 105),
      ),
          ],
        ),
        Container(
        
        child: Align(
          alignment: Alignment.center,
          child: Text("Hello World")),

          //using getX to get the mediaquery height and width
        height: Get.height * 0.2,
        width: Get.width * 0.8,
        color: Colors.greenAccent,
      ),
      ]

      ),
    );
  }
}

