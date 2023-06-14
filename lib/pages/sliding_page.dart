import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SlidingPage extends StatefulWidget {
  const SlidingPage({super.key});
  

  @override
  State<SlidingPage> createState() => _SlidingPageState();
  
}

class _SlidingPageState extends State<SlidingPage> {

   double opaci = 0.4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Container(
                width: Get.width * 0.6,
                height: Get.height * 0.3,
                color: Colors.red.withOpacity(opaci),
              ),
              Slider(value: opaci, onChanged: (value){
                print(opaci);
                opaci=value;
                setState(() {
                  
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}