import 'package:flutter/material.dart';
import 'package:resume_app/const/list_courses_const.dart';
import 'package:resume_app/ui/components/app_container.dart';
import 'package:resume_app/ui/components/app_icon.dart';

class DetailCourseScreen extends StatelessWidget {
  const DetailCourseScreen({super.key, required this.courseEntity});
  final CourseEntity courseEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(courseEntity.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppContainer(
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 50, right: 50),
                      child: AppIcon(icon: courseEntity.icon)),
                  Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 35, bottom: 20, right: 25),
                        width: double.infinity,
                        height: double.infinity,
                        child: Text(
                          courseEntity.description,
                          textAlign: TextAlign.left,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontSize: 14),
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Диплом: ',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            courseEntity.diplom.isEmpty
                ? const SizedBox()
                : ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      courseEntity.diplom,
                      fit: BoxFit.fitHeight,
                      height: 400,
                    )),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
