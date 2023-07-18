import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(18, 20, 18, 0),
      width: size.width,
      height: 50,
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          prefixIcon: Image.asset("images/icon_search.png"),
          suffixIcon: Image.asset("images/icon_scan.png"),
          filled: true,
          hintStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          hintText: "Search...",
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 0),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide(
              width: 3,
              color: Color(0xfff35383),
            ),
          ),
          fillColor: const Color(0xff272b40),
        ),
      ),
    );
  }
}
