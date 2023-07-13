import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum GuideSelect { guideRules, guidePhases, guideActions }

class GameController extends GetxController {

  Rx<GuideSelect> selectedGuide = GuideSelect.guideRules.obs;

  void changeGuide(GuideSelect newSelection){
    selectedGuide.value = newSelection;
  }

}