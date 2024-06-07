import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/azameina-saga-landscape-logo.png',
        width: 300, // Set width based on your UI design
      ),
    );
  }
}
