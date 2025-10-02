import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoes_website/screens/widgets/custom_buttons.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});

  final List<String> shoeImages = [
    "assets/images/owais1.png",
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
    Size size = MediaQuery.of(context).size;
    return Container(
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
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButtons(
                    buttonText: "Man",
                    buttonBGColor: Colors.black,
                    btnForgratedColor: Colors.white,
                  ),
                  CustomButtons(
                    buttonText: "Woman",
                    buttonBGColor: Colors.white,
                    btnForgratedColor: Colors.black,
                  ),
                  CustomButtons(
                    buttonText: "Boy",
                    buttonBGColor: Colors.white,
                    btnForgratedColor: Colors.black,
                  ),
                  CustomButtons(
                    buttonText: "Child",
                    buttonBGColor: Colors.white,
                    btnForgratedColor: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Wrap(
              spacing: 100,
              runSpacing: 20,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: size.width * 0.20, // exact width
                  height: size.height * 0.43, // exact height
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(43, 158, 158, 158),
                      border: Border.all(color: Colors.grey.withAlpha(300)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Stack(
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

                          Center(
                            child: SizedBox(
                              height: size.height * 0.35,
                              width: double.infinity,
                              child: Image.asset(
                                shoeImages[index],
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            right: 20,
                            bottom: 70,
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

                          Positioned(
                            bottom: 30,
                            right: 20,
                            left: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                SizedBox(width: 5),
                                Text(
                                  "₹4999.00",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                SizedBox(width: 60),
                                Material(
                                  color: Colors.black,
                                  shape: const CircleBorder(),
                                  child: InkWell(
                                    customBorder: const CircleBorder(),
                                    onTap: () {},
                                    child: const Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Icon(
                                        Icons.arrow_outward,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
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
