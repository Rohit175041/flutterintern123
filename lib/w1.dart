import 'package:flutter/material.dart';
import 'package:flutterintern/button.dart';
import 'package:flutterintern/getxfile1.dart';
import 'package:get/get.dart';

import 'widgetChange.dart';

class Widget1 extends StatelessWidget {
  final controller = Get.put(MainController());

  Widget1({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        body: Center(
          child: SizedBox(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text("widget 1"),
                Text(
                  "Select color: ${controller.titlename}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),

                // button 
                changeButton(),
                //widget change
                ChangeWidget(a: controller.a)
              ],
            ),
          ),
        ),
      );
    });
  }
}
