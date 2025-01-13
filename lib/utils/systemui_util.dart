import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemuiUtil {
  static void changeSystemUINavBarBrightness(Brightness brightness) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(systemNavigationBarIconBrightness: brightness));
  }

  static Future<void> showDialogBrightnessControll(
    BuildContext context,
    Widget dialog, {
    Brightness initalBrightness = Brightness.dark,
    Brightness finalBrightness = Brightness.light,
  }) async {
    // Set the initial brightness
    changeSystemUINavBarBrightness(initalBrightness);

    await showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return dialog;
      },
    );

    changeSystemUINavBarBrightness(finalBrightness);
  }
}
