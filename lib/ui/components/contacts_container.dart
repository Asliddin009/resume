import 'package:flutter/material.dart';
import 'package:resume_app/ui/components/app_container.dart';
import 'package:text_link/text_link.dart';

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
            LinkText(
              text: 'Вк: https://vk.com/ds_ss_qrt',
              style: Theme.of(context).textTheme.titleMedium!,
            ),
            LinkText(
              text: 'Github: https://github.com/Asliddin009',
              style: Theme.of(context).textTheme.titleMedium!,
            ),
            LinkText(
              text: 'Stepik: https://stepik.org/users/76022453/profile',
              style: Theme.of(context).textTheme.titleMedium!,
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
