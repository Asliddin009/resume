import 'package:flutter/material.dart';
import 'package:resume_app/ui/components/app_container.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 50),
            child: CircleAvatar(
              backgroundImage: AssetImage('avatar.jpg'),
              radius: 100,
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
                'Гражданство: Россия',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'Образование: Бакалавриат в Югорском Государственном Университете( Программная инженерия)',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'Опыт работы: 1 год коммерчерской работы и 1 год разработки программного обеспечения в вузе',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
