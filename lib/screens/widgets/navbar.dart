import 'package:flutter/material.dart';
import 'package:shoes_website/constants/menus.dart/menuitems.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 40,
        end: 40,
        top: 30,
        bottom: 30,
      ),
      child: Menuitems(),
    );
  }
}
