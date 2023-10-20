import 'package:flutter/material.dart';
import 'package:flutterintern/widgetfolder/w2.dart';
import 'package:flutterintern/widgetfolder/w3.dart';

// ignore: must_be_immutable
class ChangeWidget extends StatelessWidget {
  bool a;
  ChangeWidget({super.key, required this.a});

  @override
  Widget build(BuildContext context) {
    return a ? Widget3() : Widget2();
  }
}
