import 'package:app_skill_harvest/components/circle_image.dart';
import 'package:app_skill_harvest/foodrecipe_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthorCard extends StatelessWidget {
// 1
final String authorName;
final String title;
final ImageProvider imageProvider;

const AuthorCard({super.key,
  required this.imageProvider,
  required this.authorName,
  required this.title,
  });
// 2
@override
 Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(8),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleImage(imageProvider: imageProvider, imageRadius: 28),
                  //CircleAvatar(backgroundImage: imageProvider, radius:28),
                  const SizedBox(width:8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(authorName, style:FoodRecipeTheme.lightTextTheme.headlineMedium
                      ),
                      Text(title, style: FoodRecipeTheme.lightTextTheme.headlineSmall,)
                    ]
                  )
                ]
              ),
              IconButton(
                onPressed: (){
                const  snackBar = SnackBar(content: Text('Press Favorite',));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, 
                  icon: const Icon(Icons.favorite_border),
                  iconSize: 30,
                  color: Colors.grey[400],)
            ],
              ),
           );
      }
}