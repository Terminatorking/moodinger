import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:moodinger/widgets/number_of_followers_and_posts_and_following.dart';
import 'package:moodinger/widgets/stories.dart';

import 'button_of_account_page.dart';
import 'image_and_name_of_account.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<AccountInfo> createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: widget.size.width,
        height: widget.size.height/1.5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: Color(0xff1c1f2e),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImageAndNameOfAccount(),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 15),
                width: widget.size.width / 2,
                child: const Text(
                  "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 18,
                    ),
                    Image.asset(
                      "images/icon_link.png",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Yek.link/Amirahmad",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff55b9f7),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Image.asset("images/icon_work.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "developer",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffc5c5c5),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("images/icon_location.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "IRAN",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffc5c5c5),
                      ),
                    ),
                  ],
                ),
              ),
              const NumberOfFollowersAndPostsAndFollowing(),
              const SizedBox(
                height: 20,
              ),
              ButtonOfAccountPage(size: widget.size),
              const SizedBox(
                height: 10,
              ),
              Stories(size: widget.size),
              SizedBox(
                width: widget.size.width,
                height: 70,
                child: TabBar(
                  indicatorWeight: 2,
                  indicatorPadding: const EdgeInsets.only(left: 18, right: 18),
                  indicatorColor: const Color(0xfff35383),
                  controller: tabController,
                  tabs: [
                    Tab(
                      icon: Image.asset("images/icon_tab_posts.png"),
                    ),
                    Tab(
                      icon: Image.asset("images/icon_tab_bookmark.png"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: widget.size.width,
                height: widget.size.height / 2,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    GridViewOfAccountPage(),
                    GridViewOfAccountPage(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GridViewOfAccountPage extends StatelessWidget {
  const GridViewOfAccountPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverQuiltedGridDelegate(
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: const [
          QuiltedGridTile(2, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
        ],
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 3,
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: 24,
        (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/item${index % 10}.png"),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          );
        },
      ),
    );
  }
}
