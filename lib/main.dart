

import 'package:app_skill_harvest/home.dart';
import 'package:app_skill_harvest/models/grocery_item.dart';
import 'package:app_skill_harvest/models/grocery_manager.dart';
import 'package:app_skill_harvest/models/tab_manager.dart';
import 'package:app_skill_harvest/screens/empty_grocery_screen.dart';
import 'package:app_skill_harvest/screens/explore_screen.dart';
import 'package:app_skill_harvest/screens/grocery_item_screen.dart';
import 'package:app_skill_harvest/screens/grocery_list_screen.dart';
import 'package:app_skill_harvest/screens/grocery_screen.dart';
import 'package:app_skill_harvest/screens/recipes_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // final theme = FoodRecipeTheme.dark(),
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Calculator',
      theme: 
  
      ThemeData(
        primaryColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
     ),
      home: MultiProvider(
        providers: [
         ChangeNotifierProvider(create: (context) => TabManager(),),
         ChangeNotifierProvider(create: (context) => GroceryManager(),),
        ],
         child: const Home(),
      ),
         initialRoute: '/',
      routes: {
        '/':(context) => const Home(),
        '/empty_grocery_screen':(context) => const EmptyGroceryScreen(),
        '/explorescreen':(context) =>  ExploreScreen(),
        '/grocerylistscreen':(context) => const GroceryListScreen(),
        '/groceryscreen':(context) => const GroceryScreen(),
        '/recipesscreen' : (context) => RecipesScreen(),
        '/groceryitemscreen': (context) => const GroceryItemScreen(),
      },
    );
  }
}




