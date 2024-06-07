import 'package:flutter/material.dart';
import 'package:test5/components/barpainter/main.dart'; // Make sure this path is correct

class GradientStripedBar extends StatelessWidget {
  const GradientStripedBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: 20), // Equal margins on both sides
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Rounded corners for the bar
        border: Border.all(
            color: Colors.green, width: 2), // Green border with 2 pixels width
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Clip to the rounded corners
        child: CustomPaint(
          size:
              const Size(double.infinity, 20), // Set the height of the bar here
          painter: StripeBarPainter(),
        ),
      ),
    );
  }
}
