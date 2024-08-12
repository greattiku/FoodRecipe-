
import 'package:app_skill_harvest/models/grocery_manager.dart';
import 'package:app_skill_harvest/screens/empty_grocery_screen.dart';
import 'package:app_skill_harvest/screens/grocery_item_screen.dart';
import 'package:app_skill_harvest/screens/grocery_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
     
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            shape: CircleBorder(side: BorderSide.none),
            onPressed: (){
              final manager = Provider.of<GroceryManager>(
                context, listen: false);
              
             Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => GroceryItemScreen(
                  onCreate: (item){
                    manager.addItem(item);
                    Navigator.pop(context);
              },
               ),));
            },
            child: const Icon(Icons.add,color: Colors.white,),
            ),

          body: buildGroceryScreen(),
        );
     
 
 
  }
}

Widget buildGroceryScreen(){
return Consumer<GroceryManager>(builder: (context, manager, child){
   if(manager.groceryItems.isNotEmpty){
       //todo 25 add grocery list item
      return GroceryListScreen(manager: manager,);//GroceryListScreen(manager: manager,)
   } else{
       return const EmptyGroceryScreen();
      }
});
}