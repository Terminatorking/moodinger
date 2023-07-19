import 'package:flutter/material.dart';

class UserActions extends StatelessWidget {
  const UserActions({
    Key? key,
    required this.text,
    required this.text2,
    required this.text3,
    required this.size,
    required this.isFollowing,
    required this.isLiked,
    required this.isNow,
  }) : super(key: key);
  final String text;
  final String text2;
  final String text3;
  final bool isFollowing;
  final Size size;
  final bool isNow;
  final bool isLiked;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          !isNow
              ? const SizedBox()
              : const CircleAvatar(
                  radius: 6,
                  backgroundColor: Color(0xfff35383),
                ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: const Color(0xfff35383),
              ),
              image: const DecorationImage(
                image: AssetImage("images/postcover.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.width / 50,
              ),
              Row(
                children: [
                  Text(
                    text2,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xffc5c5c5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: size.width / 50,
                  ),
                  Text(
                    text3,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xffc5c5c5),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          !isLiked
              ? Container(
                  width: isFollowing ? null : size.width / 5.1,
                  height: 40,
                  margin: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        isFollowing
                            ? Colors.transparent
                            : const Color(0xfff35383),
                      ),
                      shape: isFollowing
                          ? MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                                side: BorderSide(
                                  width: 2,
                                  color: Color(0xffC5c5c5),
                                ),
                              ),
                            )
                          : null,
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child: Text(
                      isFollowing ? "Message" : "Follow",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: isFollowing
                            ? const Color(0xffc5c5c5)
                            : Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              : Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/item2.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
