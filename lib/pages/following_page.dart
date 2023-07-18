import 'package:flutter/material.dart';
import '../widgets/following_and_you_tab.dart';
class FollowingPage extends StatefulWidget {
  const FollowingPage({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage>
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
    return Scaffold(
      backgroundColor: const Color(0xff1c1f2e),
      body: Column(
        children: [
          SizedBox(
            width: widget.size.width,
            height: 70,
            child: TabBar(
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 20),
              indicatorColor: const Color(0xfff35383),
              indicatorWeight: 2,
              labelStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              controller: tabController,
              tabs: const [
                Tab(
                  text: "Following",
                ),
                Tab(
                  text: "You",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
              controller: tabController,
              children: [
                FollowingAndYouTab(
                  size: widget.size,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
