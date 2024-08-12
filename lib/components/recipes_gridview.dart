import 'package:app_skill_harvest/components/recipe_thumbnail.dart';
import 'package:app_skill_harvest/models/simple_recipe.dart';
import 'package:flutter/material.dart';

class RecipeGridView extends StatelessWidget {
  final List<SimpleRecipe> recipes;
  const RecipeGridView({super.key,
  required this.recipes
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: GridView.builder(
        itemCount: recipes.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2), 
          itemBuilder: ((context, index) {
            final simpleRecipe = recipes[index];
            return RecipeThumbnail(recipe: simpleRecipe);
          })),
    );
  }
}