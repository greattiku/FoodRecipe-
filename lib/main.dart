

import 'package:app_skill_harvest/home.dart';
import 'package:app_skill_harvest/models/grocery_manager.dart';
import 'package:app_skill_harvest/models/tab_manager.dart';
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
    );
  }
}




