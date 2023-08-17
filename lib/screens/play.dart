import 'package:dice/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Play extends StatelessWidget {
   Play({super.key});

   final controller = Get.put(GameController());

  @override
  Widget build(BuildContext context) {

    controller.startTimer();
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
                  child: Stack(
                    children: [
                      readyBtn(),
                      Expanded(
                        child: Center(
                          child: GestureDetector(
                              onTap: (){
                                Get.to("");
                              },
                              child: Image.asset("assets/bottom_shaking_with_dice.png")
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),

        Center(
            child: Container(
              height: 31.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/wood_bar.png"),
                      fit: BoxFit.fill
                  )
              ),
              child: Obx(() =>
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Choose your dice ", style: TextStyle(fontSize: 12.0, decoration: TextDecoration.none,color: Colors.white),),
                      Image.asset("assets/timer.png", width: 20.0,),
                      Text(" ${controller.countDown} sec", style: const TextStyle(fontSize: 12.0, decoration: TextDecoration.none,color: Colors.white))
                    ],
                  ),
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