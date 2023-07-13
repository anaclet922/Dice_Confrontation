import 'package:flutter/material.dart';

class GRules extends StatelessWidget {
  const GRules({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Column(
        children: [
          Text('''
About the game\n
This is a dueling game in which it's not just luck that counts, but also the right miscalculation.
Your task is to crush your opponent by bringing his life count to 0.
This is what the field looks like.
\n
At the bottom of the screen is your part of the field, at the top is your opponent's part. They are exactly the same, but you can only do actions on your half of the field.
In the middle of the field - the active line, which will be in certain phases of the game will arise necessary tips or a timer. 
\n
The essence of the game
You have to throw cubes and distribute them to the action cells on your side of the field. The active dice you can use will be located on the bottom panel next to your lives. You and your opponent see each other's active dice. To leave your current cubes, you'll need to click Ready in the active row (it appears during the dice selection phase).
The higher the number on the die, the stronger the effect of the selected action will be. For attack and defense, in addition to the value, the location of the die in the line is also important.
Dice can be flipped, but only before you decide to allocate them on the field. Each turn you will have the opportunity to flip any number of dice, but you will only have 2 flips after the main roll. The remaining number of rolls is shown on the die roll cup.
To flip dice, move the dice you want to change on the field from your bottom panel and press flip. Be careful: for each flip, your opponent will be added 1 bonus, which will increase the value of your opponent's cubes.
When you're ready to place the cubes, simply highlight the desired cube and click on the spot on the field where you want to place it, or simply drag the cube there. If you put a cube on top of another cube, you'll swap them out.
You can place the cubes on any square. However, you may choose only one action for your turn among the Treat and Untreat actions. You do not have to place all the cubes either. 
By placing your dice in certain places, you can fight for turn turns, attack your opponent, defend against your opponent's attacks, heal or disallow your opponent's treatment.
Combat.
\n
During combat, turns will occur automatically. But the moves will take turns. The turn is determined by the value of the die on the turn cell. If the value is equal or both players do not have a die on that square, the player with the greater sum of the numbers on the dice moves first. If it is still equal, the player with the most bonuses goes first. If there is a tie here as well, the turn will be random.
All dice that are placed in the attack must deal damage to your opponent equal to the number of dice. Each defense cube in your opponent that is opposite an attack cube prevents an amount of damage equal to its value.
If the attack is less than or equal to the defense, no damage occurs. If the attack cube is greater than the defense cube, your opponent receives damage equal to the difference between the numbers on the attack and defense cube. If no defense cube was opposite an attack cube, your opponent receives damage equal to the full value of that attack cube. Each attack cube is compared to a defense cube opposite it.
At the end of the combat, you can restore lives equal to the value of the die on the Treat square. But if your opponent has a die on the Untreat square, you will receive the difference in value. You do not receive a negative value of lives and lives are not taken from you if your opponent placed a die on the Untreat square and your Treat square is empty.
\n
You can place a die on the Untreat square to decrease the value of your opponent's die on the Treat square.
\n
Bonuses
\n
Don't forget the bonuses! You receive bonuses for rolling your opponent's cubes.
\n
During the dice allocation, there will be a space next to each row for dice (Attack/Defense/Additional Actions) to place bonuses. Then the value of the bonus will be added to the values in the cells of the selected row.
A bonus can only be placed on one row.
\n
Highlight the bonus and the cell where you want to move it. Or drag the bonus to the desired location.
\n
End of Game
The match ends when the value of lives of one of the players is 0. The game ends after the end of the turn in which it happened, even if the player who lost all his life should have had another turn.
You can also surrender during a match to avoid finishing it. But this will result in a loss on your stats.
''', textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Roboto Condensed',
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none
            ),),
        ],
      ),
    );
  }
}
