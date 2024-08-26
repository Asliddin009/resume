import 'package:flutter/material.dart';
import 'package:resume_app/const/list_courses_const.dart';
import 'package:resume_app/ui/components/app_container.dart';

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
                  Expanded(
                    child: courseEntity.icon.isEmpty
                        ? const FlutterLogo(
                            size: 150,
                          )
                        : Image.asset(
                            courseEntity.icon,
                            height: 150,
                          ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Text(
                        courseEntity.description,
                        textAlign: TextAlign.left,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontSize: 14),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
