import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
      {super.key, required this.icon, this.height = 150, this.width = 100});
  final String icon;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return icon.isEmpty
        ? Container(
            height: height,
            width: width,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
            child: const FlutterLogo(),
          )
        : ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              icon,
              fit: BoxFit.fitHeight,
              height: height,
            ));
  }
}
