import 'package:flutter/material.dart';
import 'package:resume_app/const/list_courses_const.dart';
import 'package:resume_app/ui/components/app_container.dart';
import 'package:resume_app/ui/components/custom_scroll.dart';
import 'package:resume_app/ui/courses_list/course_item.dart';

class CoursesList extends StatelessWidget {
  const CoursesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: AppContainer(
        height: 300,
        child: Column(
          children: [
            Container(
              height: 35,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 25, top: 5),
              child: Text(
                'Курсы:',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CourseItem(
                  courseEntity: courses.elementAt(index),
                ),
                itemCount: courses.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
