import 'package:getx_todolist/app/data/providers/task/provider.dart';

import '../../models/task.dart';

class TaskRepository {
  TaskProvider taskProvider;

  TaskRepository({
    required this.taskProvider,
  });
  List<Task> readTasks() => taskProvider.readTask();
  void writeTasks(List<Task> tasks) => taskProvider.writeTask(tasks);
}
