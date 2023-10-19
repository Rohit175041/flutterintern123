import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  var a = false;
  TextEditingController name2 = TextEditingController();

  String titlename = 'white';

  Color widgetcolor2 = Colors.white;
  Color widgetcolor3 = Colors.red;

  Map<String, Color> characterMap = {
    'white': Colors.white,
    'red': Colors.red,
    'green': Colors.green,
    'blue': Colors.blue,
  };

//function for button A
  void buttonchangeA() {
    a = false;
    changewidget3color(titlename);
    update();
  }

//function for button B
  void buttonchangeB() {
    a = true;
    changewidget3color(titlename);
    update();
  }

  //function to select widget2 color
  void changewidget2Color(String name) {
    if (characterMap.containsKey(name)) {
      titlename = name;
      widgetcolor2 = characterMap[titlename]!; //assigning color to widget1
      changewidget3color(titlename);
    }

    update();
  }

  //function to change color onSubmitted
  void onSubmittedwidegt2color(String name) {
    name2.text = name;
    changewidget2Color(name);
    update();
  }

  //function to change color onChanged
  void onchangedwidegt2color(String name) {
      changewidget2Color(name);
    update();
  }

//changing widget3 color
  void changewidget3color(String name) {
    randomcolor(name, widgetcolor3);
    update();
  }

// function for random color selection
  void randomcolor(String name, Color color) {
    String excludedCharacter = name; // The character to be excluded

    Random random = Random();
    String randomCharacter;

    do {
      int randomIndex = random.nextInt(characterMap.length);
      randomCharacter = characterMap.keys.elementAt(randomIndex);
    } while (randomCharacter == excludedCharacter);

    widgetcolor3 = characterMap[randomCharacter]!;
  }
}
