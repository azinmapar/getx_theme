import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_theme/controllers/theme_controller.dart';

class ToggleThemeScreen extends StatelessWidget {
  const ToggleThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          return CupertinoSwitch(
            value: Get.find<ThemeController>().isDark.value,
            onChanged: (value) {
              Get.find<ThemeController>().toggle();

              if (Get.find<ThemeController>().isDark.value) {
                Get.changeTheme(ThemeData.dark());
              } else {
                Get.changeTheme(ThemeData.light());
              }
            },
          );
        }),
      ),
    );
  }
}
