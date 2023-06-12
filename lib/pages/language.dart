import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                OutlinedButton(onPressed: (){
                  Get.updateLocale(Locale('en','US'));
                }, child: Text('English')),
                SizedBox(width: 30,),
                 OutlinedButton(onPressed: (){
                  Get.updateLocale(Locale('ur','PK'));
                 }, child: Text('Urdu')),
                  SizedBox(width: 30,),
                 OutlinedButton(onPressed: (){
                  Get.updateLocale(Locale('hi','IN'));
                 }, child: Text('Hindi'))
              ],
            )
          ],
      ),
    ),
    );
  }
}