import 'package:flutter/material.dart';
import 'package:resume_app/const/list_courses_const.dart';
import 'package:resume_app/ui/components/app_icon.dart';
import 'package:resume_app/ui/courses_list/detail_course_screen.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key, required this.courseEntity});
  final CourseEntity courseEntity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailCourseScreen(
            courseEntity: courseEntity,
          ),
        ),
      ),
      child: Container(
        height: 100,
        width: 200,
        margin: const EdgeInsets.all(25),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(9)),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                  padding: const EdgeInsets.all(33),
                  child: AppIcon(
                    icon: courseEntity.icon,
                    width: 100,
                  )),
            ),
            Expanded(
              child: Text(
                courseEntity.name,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
