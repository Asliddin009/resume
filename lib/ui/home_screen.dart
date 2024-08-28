import 'package:flutter/material.dart';
import 'package:resume_app/ui/components/about_me.dart';
import 'package:resume_app/ui/components/contacts_container.dart';
import 'package:resume_app/ui/courses_list/courses_list.dart';
import 'package:resume_app/ui/project_list/project_list.dart';
import 'package:resume_app/ui/components/title_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Резюме Flutter developer',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              //Основная информация
              TitleContainer(),
              //Проекты
              ProjectList(),
              //Курсы
              CoursesList(),
              //Обо мне
              AboutMeWidget(),
              //Контакты
              ContactsContainer()
            ],
          ),
        ));
  }
}
