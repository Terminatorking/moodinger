import 'package:flutter/material.dart';
import 'package:moodinger/widgets/number_of_followers_and_posts_and_following.dart';

import 'button_of_account_page.dart';
import 'image_and_name_of_account.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: size.width,
        height: size.height / 1.5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: Color(0xff1c1f2e),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImageAndNameOfAccount(),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 15),
              width: size.width / 2,
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
            ButtonOfAccountPage(size: size),
          ],
        ),
      ),
    );
  }
}
