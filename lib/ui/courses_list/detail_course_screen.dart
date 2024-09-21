import 'package:flutter/material.dart';
import 'package:resume_app/const/list_courses_const.dart';
import 'package:resume_app/ui/components/app_container.dart';
import 'package:resume_app/ui/components/app_icon.dart';
import 'package:resume_app/utils/ui_utils.dart';

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
              child: UiUtils.isMobileDevice(context)
                  ? _Mobile(courseEntity: courseEntity)
                  : _Web(courseEntity: courseEntity),
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
                : InteractiveViewer(
                    trackpadScrollCausesScale: true,
                    panEnabled: true, // Включает панорамирование
                    scaleEnabled: true, // Включает масштабирование
                    minScale: 0.5,
                    maxScale: 4.0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          courseEntity.diplom,
                          fit: BoxFit.fitHeight,
                          height: 400,
                        )),
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

class _Mobile extends StatefulWidget {
  const _Mobile({required this.courseEntity});
  final CourseEntity courseEntity;

  @override
  State<_Mobile> createState() => _MobileState();
}

class _MobileState extends State<_Mobile> {
  bool showAvatar = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        showAvatar
            ? Align(
                alignment: Alignment.center,
                child: AppIcon(icon: widget.courseEntity.icon))
            : Container(
                margin: const EdgeInsets.only(
                    right: 25, left: 10, bottom: 10, top: 10),
                child: Text(
                  widget.courseEntity.description,
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 12),
                ),
              ),
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
      ],
    );
  }
}

class _Web extends StatelessWidget {
  const _Web({required this.courseEntity});
  final CourseEntity courseEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: AppIcon(icon: courseEntity.icon)),
        Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(top: 35, bottom: 20, right: 25),
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
    );
  }
}
