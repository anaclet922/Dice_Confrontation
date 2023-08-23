import 'package:dice/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RealPlay extends StatelessWidget {
  RealPlay({super.key});

   final controller = Get.put(GameController());

  @override
  Widget build(BuildContext context) {

    controller.startTimerRealPlay();
    controller.playNewBackgroundSound();


    return Stack(
      children:[
        Column(
          children: [
            Expanded(
                child: Container(
                  // height: 31.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/red_back_top.png"),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Center(
                    child: Image.asset("assets/top_shaking_cup.png"),
                  ),
                )
            ),
            Expanded(
                child: Container(
                  // height: 31.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/red_back_bottom.png"),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Obx(() =>
                    Column(
                      children: [
                        readyBtn(),
                        Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/dice_${controller.diceNumbers.value[0]}.png", width: 30.0),
                              Image.asset("assets/dice_${controller.diceNumbers.value[1]}.png", width: 30.0),
                              Image.asset("assets/dice_${controller.diceNumbers.value[2]}.png", width: 30.0),
                              Image.asset("assets/dice_${controller.diceNumbers.value[3]}.png", width: 30.0),
                              Image.asset("assets/dice_${controller.diceNumbers.value[4]}.png", width: 30.0),
                              Image.asset("assets/dice_${controller.diceNumbers.value[5]}.png", width: 30.0),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: GestureDetector(
                                onTap: (){
                                  // Get.to("");
                                  controller.shakeDiceResults(1, 6);
                                },
                                child: Image.asset("assets/bottom_shaking_with_dice.png")
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),

        Center(
            child:     Obx(() => Container(
              height: 31.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/wood_bar.png"),
                      fit: BoxFit.fill
                  )
              ),
              child:
                  controller.hideCountAndPlay.value ?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Play your dice ", style: TextStyle(fontSize: 12.0, decoration: TextDecoration.none,color: Colors.white),),
                      Image.asset("assets/timer.png", width: 20.0,),
                      Text(" ${controller.countDownRealPlay} sec", style: const TextStyle(fontSize: 12.0, decoration: TextDecoration.none,color: Colors.white))
                    ],
                  ) : Text('')
              ),
            )
        ),

        Positioned(
            top: 0.0,
            child: Container(
              height: 31.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/wood_bar.png"),
                      fit: BoxFit.fill
                  )
              ),

            )
        ),

        Positioned(
            bottom: 0.0,
            child: Container(
              height: 31.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/wood_bar.png"),
                  fit: BoxFit.fill
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset("assets/heart.png", width: 24.0),
                      ),
                      Text(
                          '20',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          decoration: TextDecoration.none
                        )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset("assets/dice_${controller.diceNumbers.value[0]}.png", width: 22.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset("assets/dice_${controller.diceNumbers.value[1]}.png", width: 22.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset("assets/dice_${controller.diceNumbers.value[2]}.png", width: 22.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset("assets/dice_${controller.diceNumbers.value[3]}.png", width: 22.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset("assets/dice_${controller.diceNumbers.value[4]}.png", width: 22.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset("assets/dice_${controller.diceNumbers.value[5]}.png", width: 22.0),
                      ),
                      Padding(
                          padding:  const EdgeInsets.all(2.0),
                        child: Text(
                          controller.totalDiceCount.value.toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            decoration: TextDecoration.none
                          ),
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: (){

                    },
                    child:  Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Image.asset("assets/flag.png", width: 24.0),
                    ),
                  )
                ],
              ),
            )
        )
      ]
    );
  }

  Widget readyBtn(){
    return Align(
      alignment: Alignment.topCenter,
      child: GestureDetector(
        onTap: (){
          controller.btnPressedSound();
          Get.to('real-play');
        },
        child: Container(
          margin: const EdgeInsets.only(top: 20.0),
          width: 82,
          height: 30,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 82,
                  height: 30,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xFF9F11B5), Color(0xFF0D0C9C)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 23,
                top: 7,
                child: Text(
                  'Ready',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Roboto Condensed',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}