import 'package:flutter/material.dart';
import 'package:shoes_website/constants/menus.dart/app_keys.dart';
import 'package:shoes_website/constants/styles.dart';
import 'package:shoes_website/utils/scroll_helper.dart';

class MobileNavitems extends StatelessWidget {
  const MobileNavitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          SizedBox(height: 16),
          ListTile(
            title: Text("Home", style: Styles.menuTexStyle),
            onTap: () {
              ScrollHelper.scrollToSection(AppKeys.homeKey);
            },
          ),
          ListTile(
            title: Text("Shop", style: Styles.menuTexStyle),
            onTap: () {
              ScrollHelper.scrollToSection(AppKeys.shopKey);
            },
          ),
          ListTile(
            title: Text("Collection", style: Styles.menuTexStyle),
            onTap: () {
              ScrollHelper.scrollToSection(AppKeys.collectionKey);
            },
          ),
          ListTile(
            title: Text("Customize", style: Styles.menuTexStyle),
            onTap: () {
              ScrollHelper.scrollToSection(AppKeys.customizeKey);
            },
          ),
        ],
      ),
    );
  }
}
