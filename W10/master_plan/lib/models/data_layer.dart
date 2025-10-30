import 'package:flutter/foundation.dart';

@immutable
class Task {
  final String description;
  final bool complete;

  const Task({this.description = '', this.complete = false});
}

@immutable
class Plan {
  final String name;
  final List<Task> tasks;

  const Plan({required this.name, required this.tasks});

  String get completenessMessage {
    if (tasks.isEmpty) {
      return 'No tasks yet';
    }
    final completed = tasks.where((t) => t.complete).length;
    return '$completed out of ${tasks.length} tasks completed';
  }
}

