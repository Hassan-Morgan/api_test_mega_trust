import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class LaunchSuccess extends StatelessWidget {
  final bool? launchSuccess;

  const LaunchSuccess({Key? key, required this.launchSuccess}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (launchSuccess == true) {
      return CircleAvatar(
        radius: 5,
        backgroundColor: ColorManager.blueColor,
      );
    } else {
      return CircleAvatar(
        radius: 5,
        backgroundColor: ColorManager.redColor,
      );
    }
  }
}
