import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

enum GuideSelect { guideRules, guidePhases, guideActions }

class GameController extends GetxController {

  Rx<GuideSelect> selectedGuide = GuideSelect.guideRules.obs;

  AudioPlayer player = AudioPlayer();

  RxInt victories = 0.obs;
  RxInt victoryByCapitulation = 0.obs;
  RxInt defeat = 0.obs;
  RxInt capitulate = 0.obs;
  RxInt maximumHealth = 0.obs;
  RxInt lightningVictory = 0.obs;
  RxInt swiftVictory = 0.obs;
  RxInt swiftDefeat = 0.obs;
  RxInt prolongedDefeat = 0.obs;
  RxInt maxDamageInTurn = 0.obs;
  RxInt maxDamageInMatch = 0.obs;

  RxInt countDown = 30.obs;
  late Timer timer;


  void changeGuide(GuideSelect newSelection){
    selectedGuide.value = newSelection;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    notPlayScreenSound();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (countDown.value > 0) {
        countDown.value--;
      } else {
        timer.cancel();
      }
    });
  }



  //sound functions
  void notPlayScreenSound() async {
    String audioAsset = "assets/bg_for_app_except_play_screen.mp3";
    await player.setAsset(audioAsset);
    await player.setLoopMode(LoopMode.one);
    player.play();
  }

  void btnPressedSound() async{
    String audioAsset = "assets/click.mp3";
    AudioPlayer tmpPlayer = AudioPlayer();
    await tmpPlayer.setAsset(audioAsset);
    tmpPlayer.play();
  }

  void playNewBackgroundSound() async{
    player.stop();
    String audioAsset = "assets/bg_for_play_screen.mp3";
    await player.setAsset(audioAsset);
    await player.setLoopMode(LoopMode.one);
    player.play();
  }

}