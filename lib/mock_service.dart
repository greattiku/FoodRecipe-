
import 'package:app_skill_harvest/models/explore_data.dart';
import 'package:app_skill_harvest/models/simple_recipe.dart';
import 'package:app_skill_harvest/models/today_recipe.dart';
import 'package:app_skill_harvest/models/post.dart';

class MockFoodRecipeService {
  Future<ExploreData> getExploreData() async{

    final todayRecipes = [
      TodayRecipe(
       authorName: 'great',
       
      ),

       TodayRecipe(
        authorName: 'tiku'
      )
    ];

    final  todayPosts = [
      Post(profileImageUrl: 'assets/image/svgs/picsman1.jpg', comment: 'no', timeStamp: 2),

      Post(profileImageUrl: 'assets/image/svgs/picswoman1.jpg', comment: 'yes', timeStamp: 8),

      Post(profileImageUrl: 'assets/image/svgs/picswoman1.jpg', comment: 'nice', timeStamp: 8),

      Post(profileImageUrl: 'assets/image/svgs/picsman1.jpg', comment: 'yes', timeStamp: 8),

      Post(profileImageUrl: 'assets/image/svgs/picsman1.jpg', comment: 'yes', timeStamp: 8),

      Post(profileImageUrl: 'assets/image/svgs/picswoman1.jpg', comment: 'lovely', timeStamp: 8),

      Post(profileImageUrl: 'assets/image/svgs/picswoman1.jpg', comment: 'yes', timeStamp: 8),

      Post(profileImageUrl: 'assets/image/svgs/picsman1.jpg', comment: 'good', timeStamp: 8),

      Post(profileImageUrl: 'assets/image/svgs/picswoman1.jpg', comment: 'okay', timeStamp: 8),

      Post(profileImageUrl: 'assets/image/svgs/picsman1.jpg', comment: 'yes', timeStamp: 8)
    ];

   await Future.delayed( const Duration(seconds: 2));

   return ExploreData (
  todayRecipes: todayRecipes,
  todayPosts:todayPosts,
   
     );
  }


  Future<List<SimpleRecipe>> getRecipes() async{
    await Future.delayed(const Duration(seconds: 2));

    return [
     SimpleRecipe(id: 1, title: 'JollofRice and Chicken', dishImage: 'assets/image/svgs/Jollof Rice and Chicken.jpg', duration: '3hours'),
     SimpleRecipe(id: 1, title: 'Afang Soup', dishImage: 'assets/image/svgs/Afang soup.jpg', duration: '3hours'),
     SimpleRecipe(id: 1, title: 'Amala and Ewedu', dishImage: 'assets/image/svgs/Amala and ewedu soup.jpg', duration: '3hours'),
     SimpleRecipe(id: 1, title: 'Beans and Plantain', dishImage: 'assets/image/svgs/Beans and plantain.jpg', duration: '3hours'),
     SimpleRecipe(id: 1, title: 'Egusi Soup', dishImage: 'assets/image/svgs/Egusi Soup.jpg', duration: '3hours'),
     SimpleRecipe(id: 1, title: 'Fried Rice and Chiken', dishImage: 'assets/image/svgs/Fried Rice and Chicken.jpg', duration: '3hours'),
     SimpleRecipe(id: 1, title: 'Jollof Spaghetti', dishImage: 'assets/image/svgs/Jollof Spaghetti.jpg', duration: '3hours'),
     SimpleRecipe(id: 1, title: 'Okro Soup', dishImage: 'assets/image/svgs/okro soup.jpg', duration: '3hours'),
    SimpleRecipe(id: 1, title: 'Okro Soup', dishImage: 'assets/image/svgs/okro soup.jpg', duration: '3hours'),
    SimpleRecipe(id: 1, title: 'Porridge yam', dishImage: 'assets/image/svgs/porridge yam1.jpg', duration: '3hours'),
    SimpleRecipe(id: 1, title: 'Porridge yam', dishImage: 'assets/image/svgs/porridge yam2.jpg', duration: '3hours'),
    ];
  }
}