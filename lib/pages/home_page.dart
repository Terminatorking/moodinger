import 'package:flutter/material.dart';

import '../widgets/stories.dart';

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
            Row(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: const Color(0xFFf35383),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18),
                    ),
                    image: const DecorationImage(
                      image: AssetImage("images/postcover.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Soheil Ghazimoradi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "سهیل قاضی مرادی برنامه نویس",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset("images/icon_menu.png"),
                const SizedBox(
                  width: 15,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
