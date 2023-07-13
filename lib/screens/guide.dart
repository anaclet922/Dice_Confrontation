import 'package:dice/game_controller.dart';
import 'package:dice/screens/guides/actions.dart';
import 'package:dice/screens/guides/phases.dart';
import 'package:dice/screens/guides/rules.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Guide extends StatelessWidget {
  Guide({super.key});
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
            child: const Padding(
              padding: EdgeInsets.all(8),
            )),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 82,
                  height: 50,
                  child: GestureDetector(
                    onTap: () {
                      controller.changeGuide(GuideSelect.guideRules);
                    },
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 82,
                            height: 50,
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
                          left: 25,
                          top: 17,
                          child: Center(
                            child: Text(
                              'Rules',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Roboto Condensed',
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 82,
                  height: 50,
                  child: GestureDetector(
                    onTap: () {
                      controller.changeGuide(GuideSelect.guidePhases);
                    },
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Opacity(
                            opacity: 0.50,
                            child: Container(
                              width: 82,
                              height: 50,
                              decoration: ShapeDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment(0.00, -1.00),
                                  end: Alignment(0, 1),
                                  colors: [
                                    Color(0xFF9F11B5),
                                    Color(0xFF0D0C9C)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 20,
                          top: 17,
                          child: Center(
                            child: Text(
                              'Phases',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Roboto Condensed',
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 82,
                  height: 50,
                  child: GestureDetector(
                    onTap: () {
                      controller.changeGuide(GuideSelect.guideActions);
                    },
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Opacity(
                            opacity: 0.50,
                            child: Container(
                              width: 82,
                              height: 50,
                              decoration: ShapeDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment(0.00, -1.00),
                                  end: Alignment(0, 1),
                                  colors: [
                                    Color(0xFF9F11B5),
                                    Color(0xFF0D0C9C)
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 19,
                          top: 17,
                          child: Text(
                            'Actions',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Roboto Condensed',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Obx(
            () => Padding(
              padding: const EdgeInsets.all(24),
              child: controller.selectedGuide.value == GuideSelect.guideRules
                  ? const GRules()
                  : (controller.selectedGuide.value == GuideSelect.guidePhases
                      ? const GPhases()
                      : const GActions()),
            ),
          ),
        )
      ],
    );
  }
}
