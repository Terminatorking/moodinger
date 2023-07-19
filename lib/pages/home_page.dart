// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:moodinger/pages/add_post_page.dart';
import 'package:moodinger/pages/following_page.dart';
import 'package:moodinger/pages/profile_page.dart';
import 'package:moodinger/pages/search_page.dart';

import '../widgets/post.dart';
import '../widgets/stories.dart';
import '../widgets/top_of_posts.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: page,
          onTap: (value) {
            setState(
              () {
                page = value;
              },
            );
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff272b40),
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: Image.asset(
                page == 0
                    ? "images/icon_active_home.png"
                    : "images/icon_home.png",
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Image.asset(
                page == 1
                    ? "images/icon_search_navigation_active.png"
                    : "images/icon_search_navigation.png",
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Image.asset(
                page == 2
                    ? "images/icon_add_navigation_active.png"
                    : "images/icon_add_navigation.png",
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Image.asset(
                page == 3
                    ? "images/icon_activity_navigation_active.png"
                    : "images/icon_activity_navigation.png",
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: page == 4
                        ? const Color(0xfff35383)
                        : Colors.transparent,
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
            ),
          ],
        ),
        appBar: page == 0
            ? AppBar(
                elevation: 0,
                actions: [
                  Image.asset("images/icon_direct.png"),
                ],
                backgroundColor: Colors.transparent,
                title: Image.asset(
                  "images/moodinger_logo.png",
                  width: 130,
                ),
              )
            : null,
        backgroundColor: const Color(0xff1c1f2e),
        body: IndexedStack(
          index: page,
          children: [
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff35383),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      barrierColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: DraggableScrollableSheet(
                            initialChildSize: 0.5,
                            minChildSize: 0.2,
                            maxChildSize: 0.8,
                            builder: (context, scrollController) {
                              return ShareBottomSheet(
                                scrollController: scrollController,
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                  child: const Text("Open Button Sheet"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stories(size: widget.size),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: widget.size.width,
                  height: widget.size.height / 1.7,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          const TopOfPosts(),
                          Post(size: widget.size),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
            SearchPage(
              size: widget.size,
            ),
            AddPostPage(
              size: widget.size,
            ),
            FollowingPage(
              size: widget.size,
            ),
            ProfilePage(
              size: widget.size,
            )
          ],
        ),
      ),
    );
  }
}

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
