import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:resume_app/ui/components/app_container.dart';
import 'package:resume_app/utils/ui_utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactsContainer extends StatelessWidget {
  const ContactsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: UiUtils.isMobileDevice(context) ? 300 : 250,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Контакты:',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
            ),
            LinkifyText(
              'Вк: https://vk.com/ds_ss_qrt',
              onTap: (url) {
                log(url.value.toString());
                launchUrlString(url.value.toString());
              },
              linkStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.blue,
                  ),
              textStyle: Theme.of(context).textTheme.titleMedium!,
            ),
            LinkifyText(
              'Github: https://github.com/Asliddin009',
              onTap: (url) {
                log(url.value.toString());
                launchUrlString(url.value.toString());
              },
              linkStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.blue,
                  ),
              textStyle: Theme.of(context).textTheme.titleMedium!,
            ),
            LinkifyText(
              'Stepik: https://stepik.org/users/76022453/profile',
              onTap: (url) {
                log(url.value.toString());
                launchUrlString(url.value.toString());
              },
              linkStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.blue,
                  ),
              textStyle: Theme.of(context).textTheme.titleMedium!,
            ),
            Text(
              'Telegram: @ds_ss_qrt',
              style: Theme.of(context).textTheme.titleMedium!,
            ),
            Text(
              'Телефонный номер: +79527228043',
              style: Theme.of(context).textTheme.titleMedium!,
            ),
          ],
        ),
      ),
    );
  }
}
