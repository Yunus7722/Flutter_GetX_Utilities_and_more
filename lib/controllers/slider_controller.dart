import 'package:get/get.dart';

class SlidingController extends GetxController{

  RxDouble opaci = 0.4.obs;

  setOpacity(double newValue){
    opaci.value = newValue;
  }

}