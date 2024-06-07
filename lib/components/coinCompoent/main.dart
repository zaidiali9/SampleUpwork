import 'package:flutter/material.dart';

class CoinWidget extends StatelessWidget {
  const CoinWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/azameina-golden-mining-coin.png',
        width: 300, // Adjust the size as necessary
      ),
    );
  }
}
