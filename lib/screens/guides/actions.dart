import 'package:flutter/material.dart';


class GActions extends StatelessWidget {
  const GActions({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
          Row(
            children: [
              Image.asset('assets/guide_action_1.png', width: 40,),
              const Text(
                'is the time in which you must finish the phase or the game will automatically move on to the next phase.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_2.png', width: 40,),
              const Text(
                'This is the total sum of all your dice values. It may affect your turn order.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),



          Row(
            children: [
              Image.asset('assets/guide_action_3.png', width: 40,),
              const Text(
                'Click on it to roll your dice.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_4.png', width: 40,),
              const Text(
                'Throw the dice. The number indicates the number of rolls remaining. Each roll gives your opponent a bonus.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_5.png', width: 40,),
              const Text(
                'Your current dice that you will use in the game. You can select or move cubes on the field to flip them.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_6.png', width: 40,),
              const Text(
                'Button to confirm your readiness to move to the next stage. If both players press this button, the game proceeds to the next phase without waiting for time to run out.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_7.png', width: 40,),
              const Text(
                'The amount of your bonuses. It depends on how many times your opponent rolls the dice. Adding it to any row strengthens the cubes in it by the number of bonuses.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_8.png', width: 40,),
              const Text(
                'This is where your active cubes are placed.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_9.png', width: 40,),
              const Text(
                'This is where you place your bonus. Increases the value of the entire selected row of squares.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_10.png', width: 40,),
              const Text(
                'These are the attack squares. All cubes here will deal damage to your opponent. If there is nothing in your line of defense opposite your die, the damage of the die will be dealt in full. There are up to 3 cubes.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_11.png', width: 40,),
              const Text(
                'These are the defense cells. All cubes here, will protect you from the opponent\'s attack. If there is an attack cube in your opponent\'s attack line opposite your defense cube, you will prevent damage from your opponent\'s attack partially or completely.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_12.png', width: 40,),
              const Text(
                'You may change your turn order if your die value here is greater than your opponent\'s.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_13.png', width: 40,),
              const Text(
                'You may choose only one of these squares to place your die per turn.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


          Row(
            children: [
              Image.asset('assets/guide_action_14.png', width: 40,),
              const Text(
                'Subtracts your die from the player\'s die in the Treat space. Does not deal damage.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),



          Row(
            children: [
              Image.asset('assets/guide_action_15.png', width: 40,),
              const Text(
                'Restores your life, taking into account your opponent\'s value on the Untreat square.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),



          Row(
            children: [
              Image.asset('assets/guide_action_16.png', width: 40,),
              const Text(
                'The player\'s life.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),



          Row(
            children: [
              Image.asset('assets/guide_action_17.png', width: 40,),
              const Text(
                'Surrender and quit the game.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Fira Sans',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),


        ],
      ),
    );
  }
}
