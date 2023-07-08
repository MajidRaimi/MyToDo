import 'package:firebase_note_taker/features/task/view/widgets/add_task_bottom_modal.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => const AddTaskBottomModal(),
        ),
        child: const Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        title: const Text('MyToDo'),
        elevation: 0,
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
