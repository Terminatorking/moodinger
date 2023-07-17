import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 100,
      margin: const EdgeInsets.all(18),
      child: ListView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 64,
                height: 64,
                margin: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                  image: index != 0
                      ? const DecorationImage(
                          image: AssetImage("images/postcover.jpg"),
                          fit: BoxFit.cover,
                        )
                      : null,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(18),
                  ),
                  border: Border.all(
                    width: 3,
                    color: index == 0
                        ? Colors.white
                        : const Color(0xfff35383),
                  ),
                ),
                child: index == 0
                    ? const Icon(
                        Icons.add,
                        size: 30,
                        color: Color(0xfff35383),
                      )
                    : const SizedBox(),
              ),
              Text(
                "text ${index + 1}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
