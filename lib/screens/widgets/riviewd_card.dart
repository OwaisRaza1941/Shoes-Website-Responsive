import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final Size size;
  final String? imagePath;

  const ReviewCard({super.key, required this.size, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;

        double cardWidth;
        double cardHeight;

        if (maxWidth < 600) {
          cardWidth = size.width * 0.9;
          cardHeight = size.height * 0.25;
        } else if (maxWidth < 950) {
          cardWidth = size.width * 0.6;
          cardHeight = size.height * 0.28;
        } else {
          cardWidth = size.width * 0.4;
          cardHeight = size.height * 0.26;
        }

        return Container(
          width: cardWidth,
          height: cardHeight,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imagePath != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath!,
                    width: maxWidth < 600 ? 80 : 100,
                    height: maxWidth < 600 ? 120 : 150,
                    fit: BoxFit.cover,
                  ),
                ),
              if (imagePath != null) const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Meythli Odex",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 18),
                        Icon(Icons.star, color: Colors.amber, size: 18),
                        Icon(Icons.star, color: Colors.amber, size: 18),
                        Icon(Icons.star, color: Colors.amber, size: 18),
                        Icon(Icons.star_half, color: Colors.amber, size: 18),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Lorem Ipsum Dolor Sit Amet.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                        decoration: TextDecoration.none,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
