import 'dart:async';
import 'dart:math';

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
  RxInt countDownRealPlay = 20.obs;
  late Timer timer;

  RxList<int> diceNumbers = [1].obs;
  RxList<int> diceNumbersNpc = [1].obs;

  RxInt totalDiceCount = 0.obs;
  RxInt totalDiceCountNpc = 0.obs;

  RxBool hideCountAndPlay = false.obs;

  void changeGuide(GuideSelect newSelection){
    selectedGuide.value = newSelection;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    notPlayScreenSound();
    shakeDiceResults(1, 6);
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countDown.value > 0) {
        countDown.value--;
      } else {
        Get.toNamed('real-play');
        countDown.value = 30;
        timer.cancel();
      }
    });
  }



  void startTimerRealPlay() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countDownRealPlay.value > 0) {
        countDownRealPlay.value--;
      } else {
        timer.cancel();
        countDownRealPlay.value = 20;
        hideCountAndPlay.value = true;
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


  void shuffleList<T>() {

    List<T> list = List.from(diceNumbers.value); // Create a copy of the original list
    Random random = Random();

    for (int i = list.length - 1; i > 0; i--) {
      int j = random.nextInt(i + 1);

      // Swap elements at i and j
      T temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
    diceNumbers.value = List.from(list);
  }

  void shakeDiceResults(int startRange, int endRange){
    diceNumbers.value = [];
    totalDiceCount.value = 0;
    Random random = Random();
    for(int i = 1; i <= 6; i++){
      int randomNumber = random.nextInt(endRange) + startRange;
      diceNumbers.value.add(randomNumber);
      totalDiceCount.value += randomNumber;
    }
  }

  void shakeDiceResultsNpc(int startRange, int endRange){
    diceNumbersNpc.value = [];
    totalDiceCountNpc.value = 0;
    Random random = Random();
    for(int i = 1; i <= 6; i++){
      int randomNumber = random.nextInt(endRange) + startRange;
      diceNumbersNpc.value.add(randomNumber);
      totalDiceCountNpc.value += randomNumber;
    }
  }


}