import 'package:flutter/material.dart';

import 'image_and_name_of_account.dart';


class AccountInfo extends StatelessWidget {
  const AccountInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: size.width,
        height: size.height / 1.5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: Color(0xff1c1f2e),
        ),
        child: Column(
          children: [
            ImageAndNameOfAccount(),
          ],
        ),
      ),
    );
  }
}
