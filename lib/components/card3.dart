
import 'package:app_skill_harvest/foodrecipe_theme.dart';
import 'package:app_skill_harvest/models/today_recipe.dart';
import 'package:flutter/material.dart';

class Card3 extends StatefulWidget {
 final TodayRecipe recipe;
  const Card3({super.key, 
 required this.recipe
  });

  @override
  State<Card3> createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  bool selected = false;
 @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
           image: DecorationImage(
            image: AssetImage('assets/image/svgs/Carrots.jpg'),
            fit: BoxFit.cover,
          ),

        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),

      child: Stack(
        children: [
            Container(
              width: 400,
              height: 500,
             // constraints: const BoxConstraints.expand(width: 350, height: 450),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Icon(Icons.book, color: Colors.white, size: 40,),
                SizedBox(height: 8,),
              
              Text(
                'Recipe Trends',
                style: FoodRecipeTheme.darkTextTheme.headlineMedium,
              ),
              SizedBox(height: 10,),
              ]
            ),
          ),
        
        
          Positioned(
            top: 100,
            left: 0,

            child: Container(
              width: 300,
              padding: EdgeInsets.all(5),
              child: Wrap(
              alignment: WrapAlignment.start,
                spacing: 12,
                runSpacing: 6,
                children: [
                  Chip(
                    
                    label: Text('Healthy',
                      style: FoodRecipeTheme.darkTextTheme.bodyLarge,),
                      backgroundColor: Colors.black,
                      deleteIconColor: Colors.white,
                      onDeleted: (){
                        print('Delete');
                      },
                      ),
                     
                  Chip(
                    label: Text('Vegan',
                      style: FoodRecipeTheme.darkTextTheme.bodyLarge,),
                      backgroundColor: Colors.black,
                      deleteIconColor: Colors.white,
                      onDeleted: (){
                        print('Delete');
                      },
                      ),
                  Chip(
                    label: Text('Carrots',
                      style: FoodRecipeTheme.darkTextTheme.bodyLarge,),
                      backgroundColor: Colors.black,
                      deleteIconColor: Colors.white,
                      onDeleted: (){
                        print('Delete');
                      },
                      ),

                   Chip(
                    label: Text('Carrots',
                      style: FoodRecipeTheme.darkTextTheme.bodyLarge,),
                      backgroundColor: Colors.black,
                      deleteIconColor: Colors.white,
                      onDeleted: (){
                        print('Delete');
                      },
                      ),

                   Chip(
                    label: Text('Carrots',
                      style: FoodRecipeTheme.darkTextTheme.bodyLarge,),
                      backgroundColor: Colors.black,
                      deleteIconColor: Colors.white,
                      onDeleted: (){
                        print('Delete');
                      },
                      ),

                   Chip(
                    label: Text('Carrots',
                      style: FoodRecipeTheme.darkTextTheme.bodyLarge,),
                      backgroundColor: Colors.black,
                      deleteIconColor: Colors.white,
                      onDeleted: (){
                        print('Delete');
                      },
                      ),
                ],
              ),
            ),
          )
        ],
      ),
      )
    );
  }
}