import 'package:dio/dio.dart';

class DioService {
  static const String urlPost = "https://2rjyh48c4ffa.softwars.com.ua/tasks";
  static const String urlGet = "https://2rjyh48c4ffa.softwars.com.ua/";

  static saveToDo(String taskId, int status, String name, int type,
      String description, String finishDate, int urgent, String file) async {
    var dioPost = Dio();
    Response responsePost = await dioPost.post(urlPost, data: {
      "taskId": taskId,
      "status": status,
      "name": name,
      "type": type,
      "description": description,
      "finishDate": finishDate,
      "urgent": urgent,
      "file": file,
    });
    print(responsePost.data);
  }

  static getToDo() async {
    var dioGet = Dio();
    Response responseGet = await dioGet.get(urlGet);
    print(responseGet.data);
  }
}
