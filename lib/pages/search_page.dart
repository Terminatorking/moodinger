import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
            height: 30,
            margin: const EdgeInsets.fromLTRB(18, 20, 18, 20),
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
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        "Text",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
              physics: const BouncingScrollPhysics(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
              child: GridView.custom(
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverQuiltedGridDelegate(
                  crossAxisCount: 3,
                  repeatPattern: QuiltedGridRepeatPattern.inverted,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  pattern: const [
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                  ],
                ),
                childrenDelegate: SliverChildBuilderDelegate(
                  childCount: 40,
                  (context, index) {
                    return Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/item${index % 10}.png"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
