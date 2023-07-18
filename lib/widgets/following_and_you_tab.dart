import 'package:flutter/material.dart';
import 'package:moodinger/widgets/user_actions.dart';

class FollowingAndYouTab extends StatelessWidget {
  const FollowingAndYouTab({
    super.key,
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 0, 20),
            child: Text(
              "New",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          UserActions(
            isNow: true,
            text: "Soheil Ghazimoradi",
            text2: "Start following",
            text3: "3min",
            isFollowing: true,
            isLiked: false,
            size: size,
          ),
          UserActions(
            isNow: true,
            isLiked: true,
            text: "Soheil Ghazimoradi",
            text2: "Liked your post",
            text3: "3min",
            isFollowing: false,
            size: size,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 0, 20),
            child: Text(
              "Today",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          UserActions(
            isNow: false,
            text: "Mahaa.Candel",
            text2: "Started following you",
            text3: "3min",
            isFollowing: false,
            isLiked: false,
            size: size,
          ),
          UserActions(
            isNow: false,
            text: "Webq.co,Xlance.team",
            text2: "Liked your post",
            text3: "3min",
            isFollowing: false,
            isLiked: true,
            size: size,
          ),
          UserActions(
            isNow: false,
            text: "Arash_313",
            text2: "Started following you",
            text3: "3min",
            isFollowing: false,
            isLiked: false,
            size: size,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 30, 0, 20),
            child: Text(
              "This Week",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          UserActions(
            isNow: false,
            text: "Yasin.3aberi,Reza",
            text2: "Liked your post",
            text3: "1week",
            isFollowing: false,
            isLiked: true,
            size: size,
          ),
          UserActions(
            isNow: false,
            text: "Abed.Kamali",
            text2: "Started following you",
            text3: "1week",
            isFollowing: true,
            isLiked: false,
            size: size,
          ),
          UserActions(
            isNow: false,
            text: "Germany.lang",
            text2: "Started following you",
            text3: "1week",
            isFollowing: false,
            isLiked: false,
            size: size,
          ),
          UserActions(
            isNow: false,
            text: "Sam_Karman",
            text2: "Liked your post",
            text3: "1week",
            isFollowing: false,
            isLiked: true,
            size: size,
          ),
        ],
      ),
    );
  }
}
