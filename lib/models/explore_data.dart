

import 'package:app_skill_harvest/models/today_recipe.dart';
import 'package:app_skill_harvest/models/post.dart';

class ExploreData {
  final List<TodayRecipe> todayRecipes;
  final List<Post> todayPosts;

      ExploreData({required this.todayRecipes,required this.todayPosts});
}