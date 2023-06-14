import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_getx_remaining_tutorials/controllers/switch_controller.dart';
import 'package:get/get.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  //dependency Injection
  SwitchController controller = Get.put(SwitchController());

  // bool notification = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text("Notifications"),
            Expanded(child: Container()),
            Obx(() {
              return Switch(
                  value: controller.notification.value,
                  onChanged: (value) {
                    // notification = value;
                    // print(notification);
                    // setState(() {

                    // });
                    controller.setNotification(value);
                    print(controller.notification.value);
                  });
            })
          ],
        ),
      ),
    );
  }
}
