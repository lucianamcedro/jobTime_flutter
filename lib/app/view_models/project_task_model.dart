// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:job_timer/app/entities/projects_task.dart';

class ProjectTaskModel {
  int? id;
  String name;
  int duration;
  ProjectTaskModel({
    this.id,
    required this.name,
    required this.duration,
  });

  factory ProjectTaskModel.fromEntity(ProjectsTask task) {
    return ProjectTaskModel(
        id: task.id, name: task.name, duration: task.duration);
  }
}
