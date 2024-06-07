import 'package:flutter/material.dart';

class StripePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 168, 140, 140)
          .withOpacity(0.1) // Very light grey with some opacity
      ..strokeWidth = 2; // Slightly bolder line thickness

    const double gap = 10; // Gap between lines
    const double lineHeight = 3; // Height of each line

    // Calculate number of lines needed diagonally
    double numberOfLines = (size.height + size.width) / gap;

    for (double i = 0; i < numberOfLines; i++) {
      double xStart = i * gap;
      double yStart = 0;
      double xEnd = 0;
      double yEnd = i * gap;

      // Adjust starting and ending points if they go out of bounds
      if (xStart > size.width) {
        yStart += xStart - size.width;
        xStart = size.width;
      }
      if (yEnd > size.height) {
        xEnd += yEnd - size.height;
        yEnd = size.height;
      }

      // Draw a line from (xStart, yStart) to (xEnd, yEnd)
      canvas.drawLine(Offset(xStart, yStart), Offset(xEnd, yEnd), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
