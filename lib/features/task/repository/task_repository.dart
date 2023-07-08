import 'package:cloud_firestore/cloud_firestore.dart';

class TaskRepository {
  final FirebaseFirestore _firestore;

  TaskRepository({required FirebaseFirestore firestore})
      : _firestore = firestore;
}
