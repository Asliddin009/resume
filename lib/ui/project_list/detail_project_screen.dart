import 'package:flutter/material.dart';
import 'package:resume_app/const/list_project_const.dart';
import 'package:resume_app/ui/components/app_container.dart';
import 'package:resume_app/ui/components/custom_scroll.dart';
import 'package:resume_app/utils/ui_utils.dart';

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
              child: UiUtils.isMobileDevice(context)
                  ? _Mobile(projectEntity: projectEntity)
                  : _Web(projectEntity: projectEntity),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Скриншоты:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: SizedBox(
                height: 500,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      projectEntity.screens.elementAt(index),
                      fit: BoxFit.cover,
                      height: 250,
                    ),
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

class _Mobile extends StatefulWidget {
  const _Mobile({required this.projectEntity});
  final ProjectEntity projectEntity;

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
            ? widget.projectEntity.icon.isEmpty
                ? const FlutterLogo(
                    size: 150,
                  )
                : Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 150,
                      width: 150,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            widget.projectEntity.icon,
                            fit: BoxFit.cover,
                          )),
                    ),
                  )
            : Container(
                margin: const EdgeInsets.only(
                    right: 25, left: 10, bottom: 10, top: 10),
                child: Text(
                  widget.projectEntity.description,
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(fontSize: 10),
                )),
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
  const _Web({required this.projectEntity});
  final ProjectEntity projectEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
