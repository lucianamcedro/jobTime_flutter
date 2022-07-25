import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:job_timer/app/core/database/database.dart';
import 'package:job_timer/app/core/exceptions/failure.dart';
import 'package:job_timer/app/entities/projects.dart';
import 'package:job_timer/app/entities/projects_status.dart';
import 'package:job_timer/app/entities/projects_task.dart';

import './project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final Database _database;

  ProjectRepositoryImpl({required Database database}) : _database = database;

  @override
  Future<void> register(Projects projects) async {
    try {
      final connection = await _database.openConnection();

      await connection.writeTxn((isar) {
        return isar.projectss.put(projects);
      });
    } on IsarError catch (e, s) {
      log('Ero ao cadastrar projeto', error: e, stackTrace: s);
      throw Failure(
        message: 'Ero ao cadastrar projeto',
      );
    }
  }

  @override
  Future<List<Projects>> findByStatus(ProjectStatus status) async {
    final connection = await _database.openConnection();
    final projects =
        await connection.projectss.filter().statusEqualTo(status).findAll();
    return projects;
  }

  @override
  Future<Projects> addTask(int projectId, ProjectsTask task) async {
    final connection = await _database.openConnection();
    final project = await findById(projectId);

    project.tasks.add(task);
    await connection.writeTxn((isar) => project.tasks.save());
    return project;
  }

  @override
  Future<Projects> findById(int projectId) async {
    final connection = await _database.openConnection();
    final project = await connection.projectss.get(projectId);
    if (project == null) {
      throw Failure(message: 'Projeto não encontrado');
    }
    return project;
  }
}
