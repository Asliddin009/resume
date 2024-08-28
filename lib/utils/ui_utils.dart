import 'package:flutter/material.dart';

abstract class UiUtils {
  static bool isMobileDevice(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final targetPlatform = Theme.of(context).platform;
    if (targetPlatform == TargetPlatform.android ||
        targetPlatform == TargetPlatform.iOS ||
        screenWidth <= 600) {
      return true;
    }
    return false;
  }
}
