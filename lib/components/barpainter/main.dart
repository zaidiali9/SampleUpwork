import 'dart:math';

import 'package:flutter/material.dart';

class StripeBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Paint the gradient background
    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final Gradient gradient = LinearGradient(
      colors: [Colors.green.shade800, Colors.green.shade600],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );
    final backgroundPaint = Paint()..shader = gradient.createShader(rect);
    canvas.drawRect(rect, backgroundPaint);

    // Paint the stripes
    final paint = Paint()
      ..color = Colors.green.shade900.withOpacity(0.5)
      ..strokeWidth = 1;

    double gap = 3; // Narrow gap for a dense line effect
    double angle = 45; // Angle for slanted lines

    // Calculate the spacing and angle for the lines
    double lineSpacing =
        size.width / 40; // Change the density of the lines here
    for (double i = -size.height;
        i < size.height + size.width;
        i += lineSpacing) {
      canvas.drawLine(
        Offset(i, -size.height),
        Offset(i + size.height * tan(angle * pi / 180), size.height),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
