import 'package:isar/isar.dart';
import 'package:job_timer/app/entities/converters/project_status_converter.dart';
import 'package:job_timer/app/entities/projects_status.dart';
import 'package:job_timer/app/entities/projects_task.dart';

part 'projects.g.dart';

@Collection()
class Projects {
  @Id()
  int? id;
  late String name;

  @ProjectStatusConverter()
  late ProjectStatus status;

  final tasks = IsarLinks<ProjectsTask>();
}
