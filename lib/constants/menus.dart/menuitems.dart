import 'package:flutter/material.dart';
import 'package:shoes_website/constants/styles.dart';

class Menuitems extends StatelessWidget {
  const Menuitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left side: Logo
        Text("Slick", style: Styles.logoNavBar),

        // Center: Menu Items
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text("Home", style: Styles.menuItem),
            ),
            SizedBox(width: 30),
            TextButton(
              onPressed: () {},
              child: Text("Shop", style: Styles.menuItem),
            ),
            SizedBox(width: 30),
            TextButton(
              onPressed: () {},
              child: Text("Collection", style: Styles.menuItem),
            ),
            SizedBox(width: 30),
            TextButton(
              onPressed: () {},
              child: Text("Customize", style: Styles.menuItem),
            ),
          ],
        ),

        // Right side: Icons
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.black,
            ),
            SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
              color: Colors.black,
            ),
            SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}
