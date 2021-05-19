import 'package:flutter/material.dart';

import 'package:folio_flutter/models/project_model.dart';

class ProjectTile extends StatelessWidget {
  // ProjectTile({required Project project});
  final Project project;
  ProjectTile(this.project);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Row(
          children: [
            Text(project.title),
            Text(project.due),
          ],
        ),
      ),
    );
  }
}
