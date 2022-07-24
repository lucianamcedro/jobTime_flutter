import 'package:isar/isar.dart';

part 'projects_task.g.dart';

@Collection()
class ProjectsTask {
  @Id()
  int? id;
  late String name;
  late int duration;
  late DateTime created = DateTime.now();
}
