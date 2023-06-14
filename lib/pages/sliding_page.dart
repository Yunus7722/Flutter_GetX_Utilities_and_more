import 'package:flutter/material.dart';
import 'package:flutter_getx_remaining_tutorials/controllers/slider_controller.dart';
import 'package:get/get.dart';

class SlidingPage extends StatefulWidget {
  const SlidingPage({super.key});

  @override
  State<SlidingPage> createState() => _SlidingPageState();
}

class _SlidingPageState extends State<SlidingPage> {
  //  double opaci = 0.4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //dependency Injection
    SlidingController controller = Get.put(SlidingController());
    print("build");
    return Scaffold(
      appBar: AppBar(title: Text("Slider"),),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Obx(
                () => Container(
                  width: Get.width * 0.6,
                  height: Get.height * 0.3,
                  color: Colors.red.withOpacity(controller.opaci.value),
                ),
              ),
              Obx(() => Slider(
                  value: controller.opaci.value,
                  onChanged: (value) {
                    controller.setOpacity(value);
                    // print(opaci);
                    // opaci=value;
                    // setState(() {

                    // });
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
