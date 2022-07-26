import 'package:job_timer/app/entities/projects_status.dart';
import 'package:job_timer/app/view_models/project_model.dart';
import 'package:job_timer/app/view_models/project_task_model.dart';

abstract class ProjectService {
  Future<void> register(ProjectModel project);
  Future<List<ProjectModel>> findByStatus(ProjectStatus status);
  Future<ProjectModel> findById(int projectId);
  Future<ProjectModel> addTask(int projectId, ProjectTaskModel task);
  Future<void> finish(int projectId);
}
