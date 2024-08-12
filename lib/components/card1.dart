import 'package:app_skill_harvest/foodrecipe_theme.dart';
import 'package:app_skill_harvest/models/today_recipe.dart';
import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
   final TodayRecipe recipe;
const Card1({super.key,
required this.recipe
 });//required this.recipe
// 1
final String category = 'Editor\'s Choice';
final String title = 'The Art of Dough';
final String description = 'Learn to make the perfect bread.';
final String chef = 'Great Tiku';
// 2
@override
 Widget build(BuildContext context) {
// 3
return Container(
// 1
 padding: const EdgeInsets.all(16),
// 2
 constraints: const BoxConstraints.expand(width: 350, height: 
450),
// 3
 decoration: const BoxDecoration(
// 4
 image: DecorationImage(
// 5
 image: AssetImage('assets/image/svgs/dough.jpg'),
// 6
 fit: BoxFit.cover,
 ),
// 7
 borderRadius: BorderRadius.all(Radius.circular(10.0)),
 ),
 child: Stack(
 children: [
// 8
 Text(category, style: 
FoodRecipeTheme.darkTextTheme.bodyLarge,),
// 9
 Positioned(
 top: 20,
 child: Text(
 title,
 style: FoodRecipeTheme.darkTextTheme.headlineMedium,),),
// 10
 Positioned(
 bottom: 30,
 right: 0,
 child: Text(
 description,
 style: FoodRecipeTheme.darkTextTheme.bodyLarge,),),
// 11
 Positioned(
 bottom: 10,
 right: 0,
 child: Text(
 chef, style: FoodRecipeTheme.darkTextTheme.bodyLarge,),)
 ],
),
);
 }
}

