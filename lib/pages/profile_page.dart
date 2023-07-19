import 'package:flutter/material.dart';

import '../widgets/account_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
          ),
          Container(
            width: size.width,
            height: size.height / 4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/item1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AccountInfo(size: size),
        ],
      ),
    );
  }
}
