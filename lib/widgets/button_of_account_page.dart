import 'package:flutter/material.dart';
class ButtonOfAccountPage extends StatelessWidget {
  const ButtonOfAccountPage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: size.width / 2.3,
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color(0xfff35383),
              ),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
            ),
            onPressed: () {},
            child: const Text(
              "Follow",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          width: size.width / 2.3,
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.transparent,
              ),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  side: BorderSide(
                    width: 3,
                    color: Color(0xffc5c5c5),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
              elevation: MaterialStateProperty.all(0),
            ),
            onPressed: () {},
            child: const Text(
              "Message",
              style: TextStyle(
                color: Color(0xffc5c5c5),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
