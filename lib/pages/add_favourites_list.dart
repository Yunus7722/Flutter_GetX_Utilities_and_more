import 'package:flutter/material.dart';
import 'package:flutter_getx_remaining_tutorials/controllers/adding_fav_controller.dart';
import 'package:get/get.dart';

class AddFavourites extends StatefulWidget {
  const AddFavourites({super.key});

  @override
  State<AddFavourites> createState() => _AddFavouritesState();
}

class _AddFavouritesState extends State<AddFavourites> {
  // List<String> fruits = ['Orange','Mango','Apple','Grapes','Strawberry'];
  // List<String> favFruits = [];

  //dependency Injection
  AddingFavController favController = Get.put(AddingFavController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adding Favourites'),
      ),
      body: ListView.builder(
          itemCount: favController.fruits.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  // leading: Text(index.toString()),
                  onTap: () {
                    if (favController.favFruits
                        .contains(favController.fruits[index].toString())) {
                      favController
                          .favRemove(favController.fruits[index].toString());
                    } else {
                      favController
                          .favAdd(favController.fruits[index].toString());
                    }

                    // setState(() {});
                    // print(favFruits);
                  },
                  leading: Text(favController.fruits[index].toString()),
                  trailing: Obx(
                    () => Icon(
                      Icons.favorite,
                      //changing color w.r.t Favourites
                      color: favController.favFruits
                              .contains(favController.fruits[index].toString())
                          ? Colors.red
                          : Colors.white,
                    ),
                  )),
            );
          }),
    );
  }
}
