import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {

  bool notification = false;

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(title: Text("Switch"),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text("Notifications"),
            Expanded(child: Container()),
            Switch(value: notification, onChanged: (value){
              notification = value;
              print(notification);
              setState(() {
                
              });
            })
          ],
        ),
      ),

    );
  }
}