import 'package:app_skill_harvest/models/tab_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(30.0),
      child:  Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //add empty image
             Image.asset('assets/image/svgs/shopping cart.jpg',),
            //  ),
              const SizedBox(height: 8.0,),
            const Text(
              'No Groceries',style: TextStyle(fontSize: 21.0),
              textAlign: TextAlign.center,
            ),
            //add empty subtitle
            const SizedBox(height: 8.0,),
            const Text(
              'Shopping for ingredients?\n'
              'Tap the + button to write them down!',
              textAlign: TextAlign.center,
            ),
            
            //add browse recipe button
            ElevatedButton(
              onPressed: (){
                Provider.of<TabManager>(context, listen: false).goToRecipes();
              }, 
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),),
                backgroundColor: Colors.green
            ),
            child: const Text('Browse Recipes',style: TextStyle(color: Colors.white),),)
          ],),
      ),
      );
  }
}