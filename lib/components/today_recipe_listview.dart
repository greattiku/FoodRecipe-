
import 'package:app_skill_harvest/components/card1.dart';
import 'package:app_skill_harvest/components/card2.dart';
import 'package:app_skill_harvest/components/card3.dart';
import 'package:app_skill_harvest/components/components.dart';

import 'package:app_skill_harvest/models/today_recipe.dart';
import 'package:app_skill_harvest/models/recipe_card_type.dart';
import 'package:flutter/material.dart';
//import '../models/models.dart';


class TodayRecipeListView extends StatelessWidget {

  final List<TodayRecipe> recipes;

  const  TodayRecipeListView({super.key,
   required this.recipes,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recipes of the Day',
          style: Theme.of(context).textTheme.headlineLarge,),
          const SizedBox(height: 16,),
          Container(
            height: 400,
            //add listview
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: recipes.length,
              itemBuilder: ((context, index) {
             // final recipe = recipes[index];
              return Row(
                children: [
                //  buildCard(0),
                //  SizedBox(width: 10,),
                //  buildCard(1),
                //  SizedBox(width: 10),
                //  buildCard(2),

                buildCard(index % 3, recipes[index]),
                // buildCard(index + 1, todayRecipes[index]),
                // buildCard(index + 2, todayRecipes[index]),
                ],
              );
            }), 
            separatorBuilder: (context, index){
              return const SizedBox(width: 16,);
            }, ),
          )
        ],
      ),
    );
  }
}

Widget buildCard(int cardIndex,TodayRecipe todayRecipe) {


  switch (cardIndex %3){
    case 0:
      return Card1(recipe: todayRecipe);
    case 1:
      return Card2(recipe: todayRecipe);
    case 2:
      return Card3(recipe: todayRecipe);
    default:
      throw Exception('invalid card index');
  }
}