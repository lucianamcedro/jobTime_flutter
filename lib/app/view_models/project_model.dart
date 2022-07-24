// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:job_timer/app/entities/projects.dart';
import 'package:job_timer/app/entities/projects_status.dart';
import 'package:job_timer/app/view_models/project_task_model.dart';

class ProjectModel {
  final int? id;
  final String name;
  final int estimate;
  final ProjectStatus status;
  final List<ProjectTaskModel> tasks;

  ProjectModel({
    this.id,
    required this.name,
    required this.estimate,
    required this.status,
    required this.tasks,
  });
  factory ProjectModel.fromEntity(Projects projects) {
    projects.tasks.loadSync();

    return ProjectModel(
        id: projects.id,
        name: projects.name,
        estimate: projects.estimate,
        status: projects.status,
        tasks: projects.tasks.map(ProjectTaskModel.fromEntity).toList());
  }
}
