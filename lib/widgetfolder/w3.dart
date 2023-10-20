import 'package:flutter/material.dart';
import 'package:flutterintern/getxfolder/getxfile1.dart';
import 'package:get/get.dart';

class Widget3 extends StatelessWidget {
  Widget3({super.key});
  final controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: controller.widgetcolor3,
        width: double.infinity,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("widget 3"),
            ],
          ),
        ),
      ),
    );
  }
}
