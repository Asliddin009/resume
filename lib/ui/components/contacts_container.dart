import 'package:flutter/material.dart';
import 'package:resume_app/ui/components/app_container.dart';
import 'package:text_link/text_link.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsContainer extends StatelessWidget {
  const ContactsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
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
            LinkText(
              text: 'Вк: https://vk.com/ds_ss_qrt',
              style: Theme.of(context).textTheme.titleMedium!,
              mode: LaunchMode.externalApplication,
            ),
            LinkText(
              text: 'Github: https://github.com/Asliddin009',
              style: Theme.of(context).textTheme.titleMedium!,
              mode: LaunchMode.externalNonBrowserApplication,
            ),
            LinkText(
              text: 'Stepik: https://stepik.org/users/76022453/profile',
              style: Theme.of(context).textTheme.titleMedium!,
              mode: LaunchMode.platformDefault,
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
