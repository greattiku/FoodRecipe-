import 'package:app_skill_harvest/components/recipes_gridview.dart';
import 'package:app_skill_harvest/mock_service.dart';
import 'package:flutter/material.dart';

class RecipesScreen extends StatelessWidget {
  final exploreService = MockFoodRecipeService();
   RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (context,snapshot){
        if(snapshot.connectionState == ConnectionState.done){
         
          return RecipeGridView(recipes: snapshot.data!);
         
        } else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}