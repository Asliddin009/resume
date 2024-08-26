import 'package:flutter/material.dart';
import 'package:resume_app/const/list_project_const.dart';
import 'package:resume_app/ui/components/app_container.dart';
import 'package:resume_app/ui/components/custom_scroll.dart';
import 'package:resume_app/ui/project_list/project_item.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: AppContainer(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 35,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 25, top: 5),
              child: Text(
                'Проекты:',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ProjectItem(
                  projectEntity: projects.elementAt(index),
                ),
                itemCount: projects.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
