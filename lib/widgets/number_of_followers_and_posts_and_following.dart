import 'package:flutter/material.dart';

class NumberOfFollowersAndPostsAndFollowing extends StatelessWidget {
  const NumberOfFollowersAndPostsAndFollowing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 18,
        ),
        Text(
          "23",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Posts",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xffc5c5c5),
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          "16.2K",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Followers",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xffc5c5c5),
          ),
        ),
        SizedBox(
          width: 18,
        ),
        Text(
          "280",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Following",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xffc5c5c5),
          ),
        ),
      ],
    );
  }
}
