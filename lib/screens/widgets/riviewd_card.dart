import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final Size size;
  const ReviewCard({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      height: size.height * 0.26,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/girl_pic.png",
            width: 250,
            height: 250,
            fit: BoxFit.contain,
          ),

          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:
                  MainAxisAlignment.center, // 👈 vertically center
              children: [
                const Text(
                  "Meythli Odex",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: List.generate(5, (index) {
                    return Icon(
                      index < 4 ? Icons.star : Icons.star_half,
                      color: Colors.amber,
                      size: 18,
                    );
                  }),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit.Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                    decoration: TextDecoration.none,
                  ),
                  maxLines: 2, // 👈 text overflow control
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
