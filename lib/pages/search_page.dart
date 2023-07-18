import 'package:flutter/material.dart';

import '../widgets/search_text_field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    super.key,
    required this.size,
  });
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1f2e),
      body: Column(
        children: [
          SearchTextField(size: size),
          Container(
            width: size.width,
            height: 40,
            margin: const EdgeInsets.fromLTRB(18, 20, 18, 0),
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 15),
                  decoration: const BoxDecoration(
                    color: Color(0xff272b40),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, top: 10),
                    child: Text(
                      "Text",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
              physics: const BouncingScrollPhysics(),
            ),
          )
        ],
      ),
    );
  }
}
