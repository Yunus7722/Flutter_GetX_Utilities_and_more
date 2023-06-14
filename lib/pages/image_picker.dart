import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx_remaining_tutorials/controllers/image_pick_controller.dart';
import 'package:get/get.dart';

class ImagePickPage extends StatefulWidget {
  const ImagePickPage({super.key});

  @override
  State<ImagePickPage> createState() => _ImagePickPageState();
}

class _ImagePickPageState extends State<ImagePickPage> {

  //dependency Injection
  ImagePickerController imgController = Get.put(ImagePickerController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picking'),
      ),
      body:Obx(() => 
       Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
            radius: 100,
            backgroundImage: imgController.imagePath.isNotEmpty 
            ? FileImage(File(imgController.imagePath.toString()))
            : null
            ,
          )
          
          ),
          TextButton(onPressed: (){
            imgController.getImage();
          }, child: Text('Pick Image through camera',style: TextStyle(fontSize: 20),)),
          TextButton(onPressed: (){
            imgController.getImageByGallery();
          }, child: Text('Pick Image through Gallery',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),)
    );
  }
}
