import 'package:app_skill_harvest/foodrecipe1/recipe.dart';
import 'package:app_skill_harvest/foodrecipe1/recipe_detail.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
       title: Text('Recipe Calculator'),
       ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: () {
                
                Navigator.push(context,
                 MaterialPageRoute(builder: (context){
                  return RecipeDetail(recipe: Recipe.samples[index]);
                }));
              },
              child: buildRecipeCard(Recipe.samples[index]));
          }
          ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe){
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image(image: AssetImage(recipe.imageUrl),),
          const SizedBox(
           height: 14.0,
          ),
          Text(recipe.label,
          style: TextStyle(
            fontSize: 20.0, 
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins'),),
        ],
      ),
    ),
  );
}