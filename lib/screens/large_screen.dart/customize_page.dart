import 'package:flutter/material.dart';
import 'package:shoes_website/constants/menus.dart/app_keys.dart';
import 'package:shoes_website/screens/widgets/riviewd_card.dart';

class CustomizePage extends StatelessWidget {
  const CustomizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: AppKeys.customizeKey,
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;

          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 30, height: 3, color: Colors.black),
                  SizedBox(width: 10),
                  Text(
                    "Client Testimonial",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(width: 30, height: 3, color: Colors.black),
                ],
              ),

              SizedBox(height: 80),

              isMobile
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ReviewCard(size: MediaQuery.of(context).size),
                        SizedBox(height: 40),
                        ReviewCard(
                          size: MediaQuery.of(context).size,
                          imagePath: "assets/images/girls_riview.jpg",
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ReviewCard(size: MediaQuery.of(context).size),
                        ReviewCard(
                          size: MediaQuery.of(context).size,
                          imagePath: "assets/images/girls_riview.jpg",
                        ),
                      ],
                    ),
            ],
          );
        },
      ),
    );
  }
}
