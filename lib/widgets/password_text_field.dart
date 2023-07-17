import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required this.size,
    required this.focusNode2,
  });

  final Size size;
  final FocusNode focusNode2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 44, right: 44),
      width: size.width,
      height: 56,
      child: TextField(
        focusNode: focusNode2,
        cursorColor: Colors.white,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: Color(0xffc5c5c5),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          labelText: "Password",
          labelStyle: TextStyle(
            fontSize: 16,
            color: focusNode2.hasFocus
                ? const Color(0xfff35383)
                : const Color(0xffc5c5c5),
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
