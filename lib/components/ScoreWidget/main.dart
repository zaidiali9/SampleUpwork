import 'package:flutter/material.dart';

class ScoreWidget extends StatelessWidget {
  final String imageUrl;
  final String text;
  final bool isActive;

  const ScoreWidget({
    super.key,
    required this.imageUrl,
    required this.text,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    // Define colors with specified opacity for the border
    Color borderColor =
        const Color(0xFFFFCC00).withOpacity(0.25); // 25% opacity for border
    Color borderColorActive = const Color(0xFFFFCC00)
        .withOpacity(0.75); // 75% opacity for border active state

    // Define background color with opacity
    var backgroundColor =
        const Color(0xFFFFCC00).withOpacity(0.1); // 10% opacity for background

    return Container(
      padding: const EdgeInsets.all(5), // Padding around the image and text
      decoration: BoxDecoration(
        color: backgroundColor, // Background color with 10% opacity
        border: Border.all(
          color: isActive ? borderColorActive : borderColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imageUrl,
            width: 30,
          ),
          const SizedBox(height: 3), // Space between image and text
          Text(
            text,
            style: const TextStyle(
              fontFamily: 'Iceland', // Specifying the custom font
              fontSize: 20,
              color: Colors.white, // You can adjust color as needed
            ),
          ),
        ],
      ),
    );
  }
}
