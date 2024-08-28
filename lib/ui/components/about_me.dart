import 'package:flutter/material.dart';
import 'package:resume_app/ui/components/app_container.dart';
import 'package:resume_app/ui/components/app_link_text.dart';
import 'package:resume_app/utils/ui_utils.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      height: UiUtils.isMobileDevice(context) ? 350 : 250,
      child: const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AppLinkText(
              'Участник хакатона от Университета Иннополис',
            ),
            AppLinkText(
              'Участник в югорском хакатоне "Хантатон"',
            ),
            AppLinkText(
              'Призер в global management challenge, (https://www.ugrasu.ru/news/extracurricular-activities/studenty-yugu-v-chisle-luchshikh-v-chempionate-po-strategii-i-upravleniyu-biznesom-global-management/)',
            ),
            AppLinkText(
              'Участник программы студенческих стартапов "УМНИК", (https://www.tp86.ru/press-centr/news/39342/)',
            ),
            AppLinkText(
              'Участник акселератора ПУТП 2022',
            ),
            AppLinkText(
              'Призер (диплом 2 степени) конференции «Информационные технологии Югры», (https://www.ugrasu.ru/news/news/v-yugu-proshla-konferentsiya-informatsionnye-tekhnologii-yugry/)',
            ),
          ],
        ),
      ),
    );
  }
}
