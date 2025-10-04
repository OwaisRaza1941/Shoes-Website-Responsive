import 'package:flutter/material.dart';
import 'package:shoes_website/constants/menus.dart/app_keys.dart';
import 'package:shoes_website/screens/widgets/riviewd_card.dart';

class CustomizePage extends StatelessWidget {
  const CustomizePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      key: AppKeys.customizeKey,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40, top: 100, bottom: 100),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 30, height: 3, color: Colors.black),
                SizedBox(width: 20),
                Text(
                  "Cleint Testimonial",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(width: 20),
                Container(width: 30, height: 3, color: Colors.black),
              ],
            ),
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReviewCard(size: size),
                ReviewCard(
                  size: size,
                  imagePath: "assets/images/girls_riview.jpg",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
