import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // First Layer: Radial Gradient
      Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center, // Center the gradient
            radius: 0.8,
            colors: [
              Color(0xFF142E07), // Dark green
              Color(0xFF000000), // Black
            ],
          ),
        ),
      ),

      // Second Layer: Solid White with Opacity
      Container(
        color: Colors.white.withOpacity(0.04),
      ),

      // Third Layer: Repeating Pattern Image
      Positioned.fill(
        child: Opacity(
          opacity: 0.25,
          child: Image.asset(
            'assets/background/pattern-bg.png',
            repeat: ImageRepeat.repeat, // Repeat both axes
            width: 540, // Custom image size
          ),
        ),
      ),

      // Fourth Layer: HoneyComb Image
      Positioned.fill(
        child: Opacity(
          opacity: 0.48,
          child: Image.asset(
            'assets/background/honeycomb-bg.png',
            repeat: ImageRepeat.repeat, // Repeat both axes
            width: 135, // Custom image size
          ),
        ),
      ),
    ]);
  }
}
