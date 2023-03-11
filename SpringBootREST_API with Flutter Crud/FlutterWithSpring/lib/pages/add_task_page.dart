import 'package:flutter/material.dart';
import 'package:flutterwithspring/model/tasks_data.dart';
import 'package:provider/provider.dart';

class AddTask extends StatefulWidget{
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String taskTitle="";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(7.5),
        children: [
          const Text(
            "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.green,
                ),
          ),
          TextField(
            autofocus: true,
            onChanged: (val){
              taskTitle=val;
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {
              if(taskTitle.isNotEmpty){
                Provider.of<Taskdata>(context, listen: false).addTask(taskTitle);
                Navigator.pop(context);
              }
          },
              child: const Text(
                 "Add",
                style: TextStyle(
                    color: Colors.white54,
                ),
              ),

          ),
        ],
      ),


    );
  }
}

