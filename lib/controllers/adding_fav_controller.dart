import 'package:get/get.dart';

class AddingFavController extends GetxController{

  
  RxList<String> fruits = ['Orange','Mango','Apple','Grapes','Strawberry'].obs;
  RxList favFruits = [].obs;

  favRemove(String fruit){
    favFruits.remove(fruit);
    print(favFruits);
  }

  favAdd(String fruit){
    favFruits.add(fruit);
    print(favFruits);
  }

}