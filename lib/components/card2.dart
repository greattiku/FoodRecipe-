
import 'package:app_skill_harvest/components/author_card.dart';
import 'package:app_skill_harvest/foodrecipe_theme.dart';
import 'package:app_skill_harvest/models/today_recipe.dart';
import 'package:flutter/material.dart';


class Card2 extends StatelessWidget {
  final TodayRecipe recipe;
  const Card2({super.key,
  required this.recipe
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
           image: DecorationImage(
            image: AssetImage('assets/image/svgs/smoothies.jpg'),
            fit: BoxFit.cover,
          ),

        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),

      child:
       Column(
        children: [
         const AuthorCard(
          authorName: 'Great Tiku',
          title: 'Smoothie Connoisseur',
          imageProvider: AssetImage('assets/image/svgs/picsman1.jpg'),
        ),

        // 1
      Expanded(
        child: Stack(
          children: [
              Positioned(
                bottom: 16,
                right: 16,
              child: Text('Recipe',
                style: FoodRecipeTheme.lightTextTheme.headlineLarge,
              ),
             ),

              Positioned(
                bottom: 70,
                left: 16,
              child: RotatedBox(
                quarterTurns: 3,
              child: Text('Smoothies',
                style: FoodRecipeTheme.lightTextTheme.headlineLarge,
                 ),
              ),
              ),
            ],
          ),
        ),
      ],),
      )
    );
  }
}