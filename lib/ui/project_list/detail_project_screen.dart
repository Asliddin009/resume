import 'package:flutter/material.dart';
import 'package:resume_app/const/list_project_const.dart';
import 'package:resume_app/ui/components/app_container.dart';
import 'package:resume_app/ui/components/custom_scroll.dart';

class DetailProjectScreen extends StatelessWidget {
  const DetailProjectScreen({super.key, required this.projectEntity});
  final ProjectEntity projectEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(projectEntity.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppContainer(
              child: Row(
                children: [
                  projectEntity.icon.isEmpty
                      ? const FlutterLogo(
                          size: 150,
                        )
                      : Container(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          height: 200,
                          width: 250,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                projectEntity.icon,
                                fit: BoxFit.cover,
                              )),
                        ),
                  Expanded(
                      flex: 3,
                      child: Text(
                        projectEntity.description,
                        textAlign: TextAlign.left,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontSize: 14),
                      ))
                ],
              ),
            ),
            ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: SizedBox(
                height: 500,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Image.asset(
                    projectEntity.screens.elementAt(index),
                    fit: BoxFit.cover,
                    height: 250,
                  ),
                  itemCount: projectEntity.screens.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 25,
                      width: 25,
                    );
                  },
                ),
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
