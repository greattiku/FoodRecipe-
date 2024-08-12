import 'package:app_skill_harvest/components/components.dart';
import 'package:app_skill_harvest/components/friendpost_tile_listview.dart';
import 'package:app_skill_harvest/mock_service.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {

    final mockService = MockFoodRecipeService();

   ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:  mockService.getExploreData(), 
      builder: (context, snapshot){
        //Todo nested listview
        if (snapshot.connectionState == ConnectionState.done){
          
          //todo replace with todayrecipelist
          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: snapshot.data!.todayRecipes),
              const SizedBox(height: 16,),
              FriendPostListView(friendPosts: snapshot.data!.todayPosts)
            ],
          );
        } else{
          return const Center(child: CircularProgressIndicator(),);
        }
      
      }
      
      
    );
  }
}