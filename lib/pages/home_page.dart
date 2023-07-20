import 'package:flutter/material.dart';
import 'package:moodinger/pages/add_post_page.dart';
import 'package:moodinger/pages/following_page.dart';
import 'package:moodinger/pages/profile_page.dart';
import 'package:moodinger/pages/search_page.dart';
import '../widgets/post.dart';
import '../widgets/share_bottom_sheet.dart';
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
                Expanded(
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
