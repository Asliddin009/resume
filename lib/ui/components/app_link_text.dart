import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AppLinkText extends StatelessWidget {
  const AppLinkText(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return LinkifyText(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      onTap: (url) {
        log(url.value.toString());
        launchUrlString(url.value.toString());
      },
      linkStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Colors.blue,
          ),
      textStyle: Theme.of(context).textTheme.titleMedium!,
    );
  }
}
