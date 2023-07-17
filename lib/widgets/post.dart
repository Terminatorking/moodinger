import 'dart:ui';

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height / 2.2,
          margin: const EdgeInsets.all(15),
        ),
        Container(
          width: size.width,
          height: size.height / 2.3,
          margin: const EdgeInsets.all(18),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/postcover.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 40,
          right: 40,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: Container(
                width: size.width,
                height: 45,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white54,
                      Colors.white24,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Image.asset("images/icon_hart.png"),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "2.6 K",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("images/icon_comments.png"),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "2.6 K",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Image.asset("images/icon_share.png"),
                    Image.asset("images/icon_save.png"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
