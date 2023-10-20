import 'package:flutter/material.dart';
import 'package:flutterintern/getxfolder/getxfile1.dart';
import 'package:get/get.dart';

class Widget2 extends StatelessWidget {
  Widget2({super.key});
  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: controller.widgetcolor2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 48),
                child: Text("widget 2"),
              ),
              TextField(
                cursorColor: Colors.grey,
                decoration: const InputDecoration(
                  hintText: 'Color',
                ),
                controller: controller.name2,
                onSubmitted: (value) {
                  controller.onSubmittedwidegt2color(value);
                },
                onChanged: (value) {
                  controller.changewidget2Color(value);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
