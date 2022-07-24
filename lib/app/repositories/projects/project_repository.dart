import 'package:job_timer/app/entities/projects.dart';
import 'package:job_timer/app/entities/projects_status.dart';

abstract class ProjectRepository {
  Future<void> register(Projects projects);
  Future<List<Projects>> findByStatus(ProjectStatus status);
}
