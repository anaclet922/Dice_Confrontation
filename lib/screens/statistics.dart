import 'package:dice/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Statistics extends StatelessWidget {
   Statistics({super.key});

  final controller = Get.put(GameController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          decoration: const ShapeDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFF9F11B5), Color(0xFF0D0C9C)],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          child:  Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const Center(
                    child: Text(
                      'STATISTIC',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Roboto Condensed',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.none
                      ),
                    )
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Victories',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(
                            child: Image.asset("assets/ligne1.png")
                        ),
                        Obx(() =>
                          Text(
                            controller.victories.toString(),
                            style: const TextStyle(
                              color: Color(0xFFFD0746),
                              fontSize: 15,
                              fontFamily: 'Fira Sans',
                              fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Victory by capitulation',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(
                            child: Image.asset("assets/ligne2.png")
                        ),
                        Obx(() =>
                           Text(
                            controller.victoryByCapitulation.toString(),
                            style: const TextStyle(
                              color: Color(0xFFFD0746),
                              fontSize: 15,
                              fontFamily: 'Fira Sans',
                              fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Defeat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(
                            child: Image.asset("assets/ligne3.png")
                        ),
                        Obx(() =>
                          Text(
                            controller.defeat.toString(),
                            style: const TextStyle(
                              color: Color(0xFFFD0746),
                              fontSize: 15,
                              fontFamily: 'Fira Sans',
                              fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Capitulate',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(
                            child: Image.asset("assets/ligne4.png")
                        ),
                        Obx(() =>
                          Text(
                            controller.capitulate.toString(),
                            style: const TextStyle(
                              color: Color(0xFFFD0746),
                              fontSize: 15,
                              fontFamily: 'Fira Sans',
                              fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Maximum health',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(
                            child: Image.asset("assets/ligne5.png")
                        ),
                        Obx(() =>
                          Text(
                            controller.maximumHealth.toString(),
                            style: const TextStyle(
                              color: Color(0xFFFD0746),
                              fontSize: 15,
                              fontFamily: 'Fira Sans',
                              fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Lightning victory',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(
                            child: Image.asset("assets/ligne6.png")
                        ),
                        Obx(() =>
                          Text(
                            controller.lightningVictory.toString(),
                            style: const TextStyle(
                              color: Color(0xFFFD0746),
                              fontSize: 15,
                              fontFamily: 'Fira Sans',
                              fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Swift victory',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(
                            child: Image.asset("assets/ligne7.png")
                        ),
                        Obx(() =>
                          Text(
                            controller.swiftVictory.toString(),
                            style: const TextStyle(
                              color: Color(0xFFFD0746),
                              fontSize: 15,
                              fontFamily: 'Fira Sans',
                              fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Swift defeat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(
                            child: Image.asset("assets/ligne8.png")
                        ),
                        Obx(() =>
                          Text(
                            controller.swiftDefeat.toString(),
                            style: const TextStyle(
                              color: Color(0xFFFD0746),
                              fontSize: 15,
                              fontFamily: 'Fira Sans',
                              fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Prolonged  defeat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(
                            child: Image.asset("assets/ligne9.png")
                        ),
                        Obx(() =>
                          Text(
                            controller.prolongedDefeat.toString(),
                            style: const TextStyle(
                              color: Color(0xFFFD0746),
                              fontSize: 15,
                              fontFamily: 'Fira Sans',
                              fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                       const Text(
                          'Max damage in turn',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(
                            child: Image.asset("assets/ligne10.png")
                        ),
                        Obx(() =>
                          Text(
                            controller.maxDamageInTurn.toString(),
                            style: const TextStyle(
                              color: Color(0xFFFD0746),
                              fontSize: 15,
                              fontFamily: 'Fira Sans',
                              fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text(
                          'Max damage in match',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Fira Sans',
                            fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Expanded(
                            child: Image.asset("assets/ligne11.png")
                        ),
                        Obx(() =>
                          Text(
                            controller.maxDamageInMatch.toString(),
                            style: const TextStyle(
                              color: Color(0xFFFD0746),
                              fontSize: 15,
                              fontFamily: 'Fira Sans',
                              fontWeight: FontWeight.w900,
                                decoration: TextDecoration.none
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
