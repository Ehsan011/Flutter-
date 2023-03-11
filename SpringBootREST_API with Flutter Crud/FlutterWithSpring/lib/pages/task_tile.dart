import 'package:flutter/material.dart';
import 'package:flutterwithspring/model/task.dart';
import 'package:flutterwithspring/model/tasks_data.dart';

class Tasktile extends StatelessWidget {
  final Task task;
  final Taskdata taskdata;
  const Tasktile({Key? key, required this.task, required this.taskdata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Checkbox(
          activeColor: Colors.green,
          value: task.done,
          onChanged: (Checkbox) => {
            taskdata.updateTask(task)
          },
        ),

        title: Text(
          task.title,
          style: TextStyle(
            decoration: task.done? TextDecoration.lineThrough:TextDecoration.none
          ),
        ),

        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: (){
            taskdata.deleteTask(task);
          },
        ),
      ),
    );
  }
}

