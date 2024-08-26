import 'package:flutter/material.dart';
import 'package:resume_app/const/list_project_const.dart';
import 'package:resume_app/ui/components/app_icon.dart';
import 'package:resume_app/ui/project_list/detail_project_screen.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key, required this.projectEntity});
  final ProjectEntity projectEntity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailProjectScreen(
            projectEntity: projectEntity,
          ),
        ),
      ),
      child: Container(
        height: 150,
        width: 200,
        margin: const EdgeInsets.all(25),
        //padding: EdgeInsets.only(right: 10, left: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(9)),
          //  color: Colors.white.withOpacity(0.2),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                  padding: const EdgeInsets.all(33),
                  child: AppIcon(
                    icon: projectEntity.icon,
                  )),
            ),
            Expanded(
              child: Text(
                projectEntity.name,
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
