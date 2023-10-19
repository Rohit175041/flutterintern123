import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getxfile1.dart';

class changeButton extends StatelessWidget {
   final controller = Get.put(MainController());
   changeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //button A
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              foregroundColor: Colors.grey.shade200,
                              backgroundColor: controller.a
                                  ? Colors.white.withOpacity(.9)
                                  : Colors.yellow),
                          onPressed: () {
                            controller.buttonchangeA();
                          },
                          child: const Text(
                            'A',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    // button B
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              foregroundColor: Colors.grey.shade200,
                              backgroundColor:
                                  controller.a ? Colors.yellow : Colors.white),
                          onPressed: () {
                            controller.buttonchangeB();
                          },
                          child: const Text(
                            'B',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                );
  }
}