import 'package:flutter/material.dart';

class ImageAndNameOfAccount extends StatelessWidget {
  const ImageAndNameOfAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/postcover.jpg"),
            ),
            border: Border.all(
              width: 3,
              color: const Color(0xfff35383),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
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
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xffc5c5c5),
              ),
            ),
          ],
        ),
        const Spacer(),
        Image.asset("images/icon_profile_edit.png"),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
