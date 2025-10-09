import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_website/constants/menus.dart/app_keys.dart';
import 'package:shoes_website/screens/widgets/hover_button.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});

  final List<String> shoeImages = [
    "assets/images/shop_shoes1.png",
    "assets/images/shop_shoes2.png",
    "assets/images/shop_shoes3.png",
    "assets/images/shop_shoes4.png",
    "assets/images/shop_shoes5.png",
    "assets/images/shop_shoes6.png",
  ];

  final List<String> shoesText = [
    "Formal canvas shoe for man",
    "Sneakers shoe for man",
    "Slick Sneaker shoe",
    "Slick running shoes",
    "Formal canvas shoe for man",
    "Formal Slick shoe for man",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      key: AppKeys.shopKey,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40, top: 100, bottom: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 30, height: 3, color: Colors.black),
                SizedBox(width: 20),
                Text(
                  "Best Selling",
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

            SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 20,
                children: [
                  HoverButton(text: "Man", onPressed: () {}),
                  HoverButton(text: "Woman", onPressed: () {}),
                  HoverButton(text: "Boy", onPressed: () {}),
                  HoverButton(text: "Child", onPressed: () {}),
                ],
              ),
            ),
            SizedBox(height: 50),
            LayoutBuilder(
              builder: (context, constraints) {
                double cardWidth;
                double cardHeight;
                double spacing;

                if (constraints.maxWidth > 950) {
                  cardWidth = constraints.maxWidth * 0.25;
                  cardHeight = 300;
                  spacing = 60;
                } else if (constraints.maxWidth > 600) {
                  cardWidth = constraints.maxWidth * 0.35;
                  cardHeight = 380;
                  spacing = 40;
                } else {
                  cardWidth = 300;
                  cardHeight = 290;
                  spacing = 20;
                }

                return Wrap(
                  spacing: spacing,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: List.generate(6, (index) {
                    return SizedBox(
                      width: cardWidth,
                      height: cardHeight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(43, 158, 158, 158),
                          border: Border.all(color: Colors.grey.withAlpha(300)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                child: Text(
                                  "New",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: cardHeight * 0.45,
                                width: double.infinity,
                                child: Image.asset(
                                  shoeImages[index],
                                  fit: BoxFit.contain,
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  shoesText[index],
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹2999.00",
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Text(
                                      "₹4999.00",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    IconButton(
                                      style: IconButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        shape: CircleBorder(),
                                      ),
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_outward,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Center shopCardImage({required String imagePath}) {
    return Center(
      child: SizedBox(child: Image.asset(imagePath, fit: BoxFit.contain)),
    );
  }
}
