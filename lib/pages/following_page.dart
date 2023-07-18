// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 0, 20),
                        child: Text(
                          "New",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      UserActions(
                        isNow: true,
                        text: "Soheil Ghazimoradi",
                        text2: "Start following",
                        text3: "3min",
                        isFollowing: true,
                        isLiked: false,
                        size: widget.size,
                      ),
                      UserActions(
                        isNow: true,
                        isLiked: true,
                        text: "Soheil Ghazimoradi",
                        text2: "Liked your post",
                        text3: "3min",
                        isFollowing: false,
                        size: widget.size,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 0, 20),
                        child: Text(
                          "Today",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      UserActions(
                        isNow: false,
                        text: "Mahaa.Candel",
                        text2: "Started following you",
                        text3: "3min",
                        isFollowing: false,
                        isLiked: false,
                        size: widget.size,
                      ),
                      UserActions(
                        isNow: false,
                        text: "Webq.co,Xlance.team",
                        text2: "Liked your post",
                        text3: "3min",
                        isFollowing: false,
                        isLiked: true,
                        size: widget.size,
                      ),
                      UserActions(
                        isNow: false,
                        text: "Arash_313",
                        text2: "Started following you",
                        text3: "3min",
                        isFollowing: false,
                        isLiked: false,
                        size: widget.size,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 0, 20),
                        child: Text(
                          "This Week",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      UserActions(
                        isNow: false,
                        text: "Yasin.3aberi,Reza",
                        text2: "Liked your post",
                        text3: "1week",
                        isFollowing: false,
                        isLiked: true,
                        size: widget.size,
                      ),
                      UserActions(
                        isNow: false,
                        text: "Abed.Kamali",
                        text2: "Started following you",
                        text3: "1week",
                        isFollowing: true,
                        isLiked: false,
                        size: widget.size,
                      ),
                      UserActions(
                        isNow: false,
                        text: "Germany.lang",
                        text2: "Started following you",
                        text3: "1week",
                        isFollowing: false,
                        isLiked: false,
                        size: widget.size,
                      ),
                      UserActions(
                        isNow: false,
                        text: "Sam_Karman",
                        text2: "Liked your post",
                        text3: "1week",
                        isFollowing: false,
                        isLiked: true,
                        size: widget.size,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
              Row(
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
                    width: size.width / 70,
                  ),
                  Text(
                    text2,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xffc5c5c5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width / 50,
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
          !isLiked
              ? Container(
                  width: isFollowing ? null : size.width / 5.10,
                  height: 40,
                  margin: const EdgeInsets.only(left: 10, right: 10),
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
                  margin: const EdgeInsets.only(left: 30),
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
