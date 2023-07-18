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
          SearchTextField(size: size)
        ],
      ),
    );
  }
}
