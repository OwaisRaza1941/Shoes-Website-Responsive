import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoes_website/constants/menus.dart/app_keys.dart';
import 'package:shoes_website/screens/widgets/hover_text_button.dart';
import 'package:shoes_website/utils/scroll_helper.dart';

class Menuitems extends StatelessWidget {
  const Menuitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Slick", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

        // Center Menu
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HoverTextButton(
              text: "Home",
              onPressed: () => ScrollHelper.scrollToSection(AppKeys.homeKey),
            ),
            SizedBox(width: 30),
            HoverTextButton(
              text: "Shop",
              onPressed: () => ScrollHelper.scrollToSection(AppKeys.shopKey),
            ),
            SizedBox(width: 30),
            HoverTextButton(
              text: "Collection",
              onPressed: () => ScrollHelper.scrollToSection(AppKeys.collectionKey),
            ),
            SizedBox(width: 30),
            HoverTextButton(
              text: "Customize",
              onPressed: () => ScrollHelper.scrollToSection(AppKeys.customizeKey),
            ),
          ],
        ),

        // Right side icons
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search, color: Colors.black)),
            SizedBox(width: 20),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined, color: Colors.black)),
            SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.barsProgress, color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
