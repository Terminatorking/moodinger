import 'package:flutter/material.dart';

import '../widgets/stories.dart';
import '../widgets/top_of_posts.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            Image.asset("images/icon_direct.png"),
          ],
          backgroundColor: Colors.transparent,
          title: Image.asset(
            "images/moodinger_logo.png",
            width: 130,
          ),
        ),
        backgroundColor: const Color(0xff1c1f2e),
        body: Column(
          children: [
            Stories(size: size),
            const SizedBox(
              height: 10,
            ),
            TopOfPosts()
          ],
        ),
      ),
    );
  }
}
