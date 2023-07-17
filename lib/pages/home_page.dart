import 'package:flutter/material.dart';

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
        backgroundColor: Color(0xff1c1f2e),
      ),
    );
  }
}
