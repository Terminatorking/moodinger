import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    required this.size,
    required this.focusNode,
  });

  final Size size;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 44, right: 44),
      width: size.width,
      height: 56,
      child: TextField(
        focusNode: focusNode,
        cursorColor: Colors.white,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          labelText: "Email",
          labelStyle: TextStyle(
            fontSize: 16,
            color: focusNode.hasFocus
                ? const Color(0xfff35383)
                : const Color(0xffc5c5c5),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Color(0xffc5c5c5),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Color(0xfff35383),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
