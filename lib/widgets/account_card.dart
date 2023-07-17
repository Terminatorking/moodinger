import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:moodinger/pages/home_page.dart';
class AccountCard extends StatelessWidget {
  const AccountCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height / 1.3,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/switch_account_background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
              child: Container(
                margin: const EdgeInsets.fromLTRB(44, 0, 44, 0),
                width: size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white54,
                      Colors.white24,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      width: 130,
                      height: 130,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            'images/postcover.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Soheil Ghazimoradi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: 45,
                      margin: EdgeInsets.fromLTRB(
                          size.width / 3.5, 20, size.width / 3.5, 10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xfff35383),
                          ),
                        ),
                        child: const Text("Confrim"),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage(
                                  size: size,
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Switch Account",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
