
import 'package:app_skill_harvest/models/tab_manager.dart';
import 'package:app_skill_harvest/screens/explore_screen.dart';
import 'package:app_skill_harvest/screens/grocery_screen.dart';
import 'package:app_skill_harvest/screens/recipes_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
int _selectedIndex = 0;

static List<Widget> pages = [
 ExploreScreen(),
 RecipesScreen(),
 const GroceryScreen(),
 //TodayRecipeListView(),
  //   //Card1(recipe:TodayRecipe(authorName: 'hhhh', ),),
  //  Card2(),
  //  Card3(),
];

void _onItemTapped(int index){
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context){
  return Consumer<TabManager>(builder:( context, tabManager,child) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.grey,
        title: Text('FoodRecipe',
        style: Theme.of(context).textTheme.titleLarge,),
        ),

      body:IndexedStack(index: tabManager.selectedTab, children: pages,),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: tabManager.selectedTab,
        onTap:(index){
          tabManager.goToTab(index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore),
          label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.book),
          label: 'Recipe'),
          BottomNavigationBarItem(icon: Icon(Icons.list),
          label: 'To Buy'),
        ]),
    );
  },);
}}