import 'package:job_timer/app/entities/projects.dart';

abstract class ProjectRepository {
  Future<void> register(Projects projects);
}
