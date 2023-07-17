import 'package:flutter/material.dart';
class TopOfPosts extends StatelessWidget {
  const TopOfPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
