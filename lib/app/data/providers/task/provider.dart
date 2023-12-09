import 'dart:convert';
import 'package:get/get.dart';
import 'package:getx_todolist/app/core/utils/keys.dart';
import 'package:getx_todolist/app/data/services/storage/services.dart';
import '../../models/task.dart';

class TaskProvider {
  final StroageService _storage = Get.find<StroageService>();

  List<Task> readTask() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTask(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
