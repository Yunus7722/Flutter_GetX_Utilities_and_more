import 'package:flutter/material.dart';

class AddFavourites extends StatefulWidget {
  const AddFavourites({super.key});

  @override
  State<AddFavourites> createState() => _AddFavouritesState();
}

class _AddFavouritesState extends State<AddFavourites> {

  List<String> fruits = ['Orange','Mango','Apple','Grapes','Strawberry'];
  List<String> favFruits = [];




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adding Favourites'),),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context,index){
        
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            // leading: Text(index.toString()),
            onTap: (){

              if(favFruits.contains(fruits[index].toString())){
                favFruits.remove(fruits[index].toString());
              }
              else{
                 favFruits.add(fruits[index].toString());
              }
              
              setState(() {
                
              });
              // print(favFruits);
            },
            leading: Text(fruits[index].toString()),
            trailing: Icon(Icons.favorite,
            //changing color w.r.t Favourites
            color:favFruits.contains(fruits[index].toString()) ? Colors.red:Colors.white,
            ),
          ),
        );
      }),
    );
  }
}