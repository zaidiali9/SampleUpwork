import 'package:flutter/material.dart';
import 'package:test5/components/gamecomponent/main.dart';

class ButtomBar extends StatelessWidget {
  const ButtomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        MineWidget(
          imageUrl: 'assets/images/mine-coin.png',
          text: 'MINE',
        ),
        MineWidget(imageUrl: 'assets/images/force.png', text: 'FORCE'),
        MineWidget(imageUrl: 'assets/images/golden-coin.png', text: 'PLAY'),
        MineWidget(imageUrl: 'assets/images/fuel.png', text: 'FUEL'),
        MineWidget(imageUrl: 'assets/images/ranks.png', text: 'RANK'),
      ],
    );
  }
}
