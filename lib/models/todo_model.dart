import 'dart:convert';

class ToDoModel {
  final String task;
  final bool isDone;
  final String userId;
  ToDoModel({
    required this.task,
    required this.isDone,
    required this.userId,
  });

  ToDoModel copyWith({
    String? task,
    bool? isDone,
    String? userId,
  }) {
    return ToDoModel(
      task: task ?? this.task,
      isDone: isDone ?? this.isDone,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'task': task,
      'isDone': isDone,
      'userId': userId,
    };
  }

  factory ToDoModel.fromMap(Map<String, dynamic> map) {
    return ToDoModel(
      task: map['task'] as String,
      isDone: map['isDone'] as bool,
      userId: map['userId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ToDoModel.fromJson(String source) =>
      ToDoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ToDoModel(task: $task, isDone: $isDone, userId: $userId)';

  @override
  bool operator ==(covariant ToDoModel other) {
    if (identical(this, other)) return true;

    return other.task == task &&
        other.isDone == isDone &&
        other.userId == userId;
  }

  @override
  int get hashCode => task.hashCode ^ isDone.hashCode ^ userId.hashCode;
}
