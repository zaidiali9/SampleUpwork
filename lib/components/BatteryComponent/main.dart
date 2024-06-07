import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
  const Battery({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/energy-battery.png',
          width: 40,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          '10000/10000',
          style: TextStyle(
            fontFamily: 'Iceland',
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
