import 'package:app_skill_harvest/components/circle_image.dart';
import 'package:app_skill_harvest/models/post.dart';
import 'package:flutter/material.dart';

class FriendPostTile extends StatelessWidget {
    final Post post;
  const FriendPostTile({super.key,
  required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImage(imageProvider: AssetImage(post.profileImageUrl),
        imageRadius: 20,),
        const SizedBox(width: 16,),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.comment),
              Text('${post.timeStamp} mins ago',
              style: const TextStyle(fontWeight: FontWeight.w700),)
        ],))
      ],
    );
  }
}