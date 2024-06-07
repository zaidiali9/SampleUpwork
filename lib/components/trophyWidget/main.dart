import 'package:flutter/material.dart';
import 'package:test5/components/Painter/main.dart';

class DiamondWidget extends StatelessWidget {
  const DiamondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Define colors with specified opacity for the border
    final Color borderColor =
        Color.fromRGBO(108, 249, 38, 0.25); // 25% opacity for border
    final Color backgroundColor =
        Color.fromRGBO(108, 249, 38, 0.1); // 10% opacity for background

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
          vertical: 4, horizontal: 20), // Adjust padding as needed
      decoration: BoxDecoration(
        color: backgroundColor, // Background color with opacity
        border: Border.all(
          color: borderColor,
          // Border thickness
        ),
// Rounded corners
      ),
      child: CustomPaint(
        painter: StripePainter(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/10-Grand-Master.png',
              width: 50,
            ),
            const SizedBox(width: 1),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Diamond',
                style: TextStyle(
                  fontFamily: 'Iceland',
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
