import 'dart:convert';
import 'package:flutterwithspring/model/task.dart';
import 'package:flutterwithspring/service/global.dart';
import 'package:http/http.dart' as http;

class DatabaseServices {
  //  For ADD data
  static Future<Task> addTask(String title) async {
    Map data = {
      "title": title,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL + '/addtask');

    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print(response.body);
    Map responseMap = jsonDecode(response.body);
    Task task = Task.fromJson(responseMap);

    return task;
  }

//  To Show all Task

  static Future<List<Task>> getTasks() async {
    var url = Uri.parse(baseURL+"/alltask");
    http.Response response = await http.get(url, headers: headers,);
    print(response.body);
    List responseList = jsonDecode(response.body);
    List<Task> tasks = [];

    for (Map taskMap in responseList) {
      Task task = Task.fromJson(taskMap);
      tasks.add(task);
    }
    return tasks;
  }

//  For Update BD data
  static Future<http.Response> updateTask(int id) async{
    var url = Uri.parse(baseURL+'/update/$id');
    http.Response response = await http.put(url, headers:headers,);
    print(response.body);
    return response;
  }

//  for delete DB data

  static Future<http.Response> deleteTask(int id) async{
    var url = Uri.parse(baseURL+'/delete/$id');
    http.Response response=await http.delete( url, headers: headers,);
    print(response.body);
    return response;
  }
}
