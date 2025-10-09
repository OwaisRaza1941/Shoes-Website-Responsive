import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shoes_website/constants/menus.dart/app_keys.dart';
import 'package:shoes_website/constants/menus.dart/mobile_nav_items.dart';
import 'package:shoes_website/constants/styles.dart';
import 'package:shoes_website/screens/large_screen.dart/customize_page.dart';
import 'package:shoes_website/screens/large_screen.dart/footer.dart';
import 'package:shoes_website/screens/large_screen.dart/shop_page.dart';
import 'package:shoes_website/screens/mobile_screen.dart/collection_page_mobile.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets/bottom_slide.dart';
import 'package:shoes_website/screens/widgets/large_screen_widgets/hero_section.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Container(color: Colors.transparent),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 16,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Slick", style: Styles.logoNavBar),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(backgroundColor: Colors.black, child: MobileNavitems()),
      body: Container(
        key: AppKeys.homeKey,
        width: double.infinity,
        height: double.infinity,
        decoration: Styles.gradeintDecoration,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeroSection(),
              BottomSlide(),
              CollectionPageMobile(),
              ShopPage(),
              CustomizePage(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
