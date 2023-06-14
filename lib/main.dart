import 'package:flutter/material.dart';
import 'package:flutter_getx_remaining_tutorials/model/local_languages.dart';
import 'package:flutter_getx_remaining_tutorials/pages/language.dart';
import 'package:flutter_getx_remaining_tutorials/pages/sliding_page.dart';
import 'package:get/get.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),

      //For Homepage
      // home: HomePage(),

      //for languages
      // home:Language(),
      // locale: Locale("en","US"),
      // fallbackLocale:Locale("en","US") ,
      // translations: LocalLanguages(),

      //for Slider with color Opacity

      home: SlidingPage(),
    );
  }
}

