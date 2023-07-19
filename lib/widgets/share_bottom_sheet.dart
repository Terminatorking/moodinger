import 'dart:ui';

import 'package:flutter/material.dart';
class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({
    Key? key,
    required this.scrollController,
  }) : super(key: key);
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              color: const Color.fromRGBO(255, 255, 255, 0.1),
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                controller: scrollController,
                child: Column(
                  children: [
                    Container(
                      width: 70,
                      height: 5,
                      margin: const EdgeInsets.all(18),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "Share",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Image.asset("images/icon_share_bottomsheet.png")
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white38,
                          prefixIcon: Image.asset("images/icon_search.png"),
                          hintText: "Search",
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 450,
                      child: GridView.builder(
                        controller: scrollController,
                        physics: const BouncingScrollPhysics(),
                        itemCount: 40,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 20,
                          mainAxisExtent: 110,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/postcover.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Soheil Ghazimoradi",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              child: SizedBox(
                width: 130,
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
                  child: const Text("Share"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
