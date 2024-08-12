import 'package:app_skill_harvest/components/friend_post_tile.dart';
import 'package:app_skill_harvest/models/post.dart';
import 'package:flutter/material.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> friendPosts;
  const FriendPostListView({super.key,
  required this.friendPosts,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16,right: 16,top: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('Social Chefs',style: Theme.of(context).textTheme.headlineLarge,),
        const SizedBox(height: 16,),
        ListView.separated(
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: friendPosts.length,
          itemBuilder: ((context, index) {
          final post = friendPosts[index];
          return FriendPostTile(post: post);
        }), separatorBuilder: ((context, index) {
          return const SizedBox(height: 16,);
        }),
        ),
      ],),
    );
  }
}