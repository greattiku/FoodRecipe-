import 'package:app_skill_harvest/models/simple_recipe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeThumbnail extends StatelessWidget {
    final SimpleRecipe recipe;
  const RecipeThumbnail({super.key,
  required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(recipe.dishImage,
                fit: BoxFit.cover,
                ),
              )
            ,),
            const SizedBox(height: 10,),
            Text(
              recipe.title,
              maxLines: 1,
              style: TextStyle(
                fontFamily: 'GoogleFonts.poppins',fontSize: 16, fontWeight: FontWeight.bold),
            ),

            Text(
              recipe.duration,
              style: TextStyle(
                fontFamily: 'GoogleFonts.openSans',fontSize: 14, fontWeight: FontWeight.bold),
            )
      ],)
    );
  }
}