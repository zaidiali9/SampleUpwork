import 'package:flutter/material.dart';
import 'package:test5/components/BatteryComponent/main.dart';
import 'package:test5/components/BottomBar/main.dart';
import 'package:test5/components/ScoreWidget/main.dart';
import 'package:test5/components/backgroundComponent/main.dart';
import 'package:test5/components/coinCompoent/main.dart';
import 'package:test5/components/gamecomponent/main.dart';
import 'package:test5/components/logoComponent/main.dart';
import 'package:test5/components/minecomponent/main.dart';
import 'package:test5/components/stripedbar/main.dart';
import 'package:test5/components/trophyWidget/main.dart';
// Import the new coin widget

class IntegrationWidget extends StatelessWidget {
  const IntegrationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const MyWidget(), // Your custom background widget
        const Center(
          // Centered column for stacking widgets vertically
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 90),
              ScoreWidget(
                  imageUrl: 'assets/images/golden-coin.png',
                  text: '500000000000000'),
              CoinWidget(),
              DiamondWidget(),
              // Coin Widget at the top
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MineWidget(
                      imageUrl: 'assets/images/mine-coin.png', text: 'Mine'),
                  SizedBox(width: 20),
                  GameWidget(),
                  // Game widget just below the coin
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Battery(),
              GradientStripedBar(),
              SizedBox(
                height: 30,
              ),
              ButtomBar() // Mine coin widget just below the game
            ],
          ),
        ),
        // Logo at the top

        Positioned(
          top: 50, // Adjust the top value to position the logo correctly
          left: 0,
          right: 0,
          child: LogoWidget(),
        ),
      ],
    );
  }
}
