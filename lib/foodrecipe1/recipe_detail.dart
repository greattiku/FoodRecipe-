import 'package:app_skill_harvest/foodrecipe1/recipe.dart';
import 'package:flutter/material.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({super.key,
  required this.recipe,
  });

  final Recipe recipe;

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),

      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(image: AssetImage(widget.recipe.imageUrl)),
            ),

            // const SizedBox(
            //   height: 2,
            // ),
            
            Text(widget.recipe.label,
            style: const TextStyle(fontSize: 18),),

            Expanded(child: ListView.builder(
              padding: EdgeInsets.all(7.0),
              itemCount: widget.recipe.ingredients.length,
              itemBuilder: (context, index) {
              final ingredient = widget.recipe.ingredients[index];
              return Text('${ingredient.quantity * _sliderVal} '
                          '${ingredient.measure} '
                          '${ingredient.name}');
            },
            )),

            Slider(
              // 10
               min: 1,
               max: 10,
              divisions: 10,
              // 11
               label: '${_sliderVal * widget.recipe.servings} servings',
              // 12
              value: _sliderVal.toDouble(),
              // 13
              onChanged: (newValue) {
              setState(() {
              _sliderVal = newValue.round();
              });
              },
              // 14
              activeColor: Colors.green,
              inactiveColor: Colors.black,
                ),
          ],
        )),
    );
  }
}
