import 'package:job_timer/app/entities/projects.dart';
import 'package:job_timer/app/entities/projects_status.dart';
import 'package:job_timer/app/entities/projects_task.dart';

abstract class ProjectRepository {
  Future<void> register(Projects projects);
  Future<List<Projects>> findByStatus(ProjectStatus status);
  Future<Projects> findById(int projectId);
  Future<Projects> addTask(int projectId, ProjectsTask task);
  Future<void> finish(int projectId);
}
