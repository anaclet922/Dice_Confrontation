import 'package:flutter/material.dart';

class GPhases extends StatelessWidget {
  const GPhases({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          const Text(
              '''The game is divided into three main phases. Each has its own rules and each phase will have its own time. If you don't make your move in the allotted time, all dice will remain in the places where you placed them. When both players are ready, they immediately move on to the next phase.\n\n
          1. Preparation Phase.\n
Thirty seconds are allotted for this phase. There will be a dice roll cup, the current value of the bonuses, a ready button, and a dice value sum number.\n
You will see here and in other screens, the value of your opponent's selected dice and his current bonuses.\n
You need to roll the dice and determine which ones you will keep and which ones you will roll. You will also see your opponent's cubes and his readiness to start the game.\n
If you are sure of your dice choice, you can press the Ready button to show your opponent you have made your decision. But you won't be able to roll again.\n
If both players have used all their rolls or are ready for the next phase, they move on to it without waiting for time to run out.''',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none)),
          Image.asset('assets/guide_1.png'),
          const Text(
              '''2. Tactics Phase.\n
This phase takes 20 seconds. Players move simultaneously. There will be squares on the field for dice placement (attack, defense, and additional action rows). Also, the ready button and the number of the sum of the values on your dice will remain.\n
You will not see where your opponent has placed his cubes.\n
You must place your cubes and bonuses on the battlefield.''',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none)),
          Image.asset('assets/guide_2.png'),
          const Text(
              '''3. Combat Phase.\n
There is no time allocated for this phase, it is automatic. Players take turns making their moves. The order of turns is described in the rules.\n
The players are presented with the opponent's field in its entirety and can see exactly where the opponent's cubes are placed. Then it will be the turn of the first player.\n
When both players' turns are over, the phases begin again.\n
If one of the players runs out of life at the end of the current player's turn, the game is over.”''',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Roboto Condensed',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.none)),
          Image.asset('assets/guide_3.png'),
        ],
      ),
    );
  }
}
