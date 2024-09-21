import 'package:flutter/material.dart';
import 'package:resume_app/ui/components/app_container.dart';
import 'package:resume_app/utils/ui_utils.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: UiUtils.isMobileDevice(context)
          ? const _MobileList()
          : const _WebList(),
    );
  }
}

class _MobileList extends StatefulWidget {
  const _MobileList();

  @override
  State<_MobileList> createState() => _MobileListState();
}

class _MobileListState extends State<_MobileList> {
  bool showAvatar = true;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      showAvatar
          ? Align(
              alignment: Alignment.center,
              child: Container(
                width: 200.0,
                height: 200.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 140, 133, 114),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/avatar1.png',
                    ),
                  ),
                ),
              ),
            )
          : Container(
              margin: const EdgeInsets.only(
                  right: 25, left: 10, bottom: 10, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• ФИО: Сайдалиев Аслиддин Джамалидинович',
                      style: Theme.of(context).textTheme.titleSmall,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                  Text('• Дата Рождения: 09.04.2002 (22 года)',
                      style: Theme.of(context).textTheme.titleSmall,
                      overflow: TextOverflow.ellipsis),
                  Text(
                    '• Гражданство: РФ',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    '• Образование: Бакалавриат в Югорском Государственном Университете( Программная инженерия)',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    'Опыт работы: 2 год коммерческой разработки в "Инфо Югра"',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    '1 год разработки программного обеспечения в Start Up лаборатории ЮГУ',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              )),
      Align(
        alignment: Alignment.bottomRight,
        child: IconButton(
            onPressed: () {
              setState(() {
                showAvatar = !showAvatar;
              });
            },
            icon: Icon(showAvatar ? Icons.text_fields : Icons.image)),
      )
    ]);
  }
}

class _WebList extends StatelessWidget {
  const _WebList();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Container(
            width: 150.0,
            height: 150.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 140, 133, 114),
              image: DecorationImage(
                image: AssetImage(
                  'assets/avatar1.png',
                ),
              ),
            ),
          ),
        ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ФИО: Сайдалиев Аслиддин Джамалидинович',
                style: Theme.of(context).textTheme.titleMedium,
                overflow: TextOverflow.ellipsis),
            Text('Дата Рождения 09.04.2002 (22 года)',
                style: Theme.of(context).textTheme.titleMedium,
                overflow: TextOverflow.ellipsis),
            Text(
              'Гражданство: РФ',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'Образование: Бакалавриат в Югорском Государственном Университете( Программная инженерия)',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'Опыт работы: 2 год коммерческой разработки в "Инфо Югра"',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              '1 год разработки программного обеспечения в Start Up лаборатории ЮГУ',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ))
      ],
    );
  }
}
