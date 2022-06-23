import 'package:dio/dio.dart';
import 'package:to_do_app/dio_model/get_model.dart';

class DioService {
  final String url = "https://2rjyh48c4ffa.softwars.com.ua/tasks";

  saveToDo(String taskId, int status, String name, int type, String description,
      String finishDate, int urgent, String file) async {
    var dioPost = Dio();
    await dioPost.post(url, data: {
      "taskId": taskId,
      "status": status,
      "name": name,
      "type": type,
      "description": description,
      "finishDate": finishDate,
      "urgent": urgent,
      "file": file,
    });
  }

  Future<List<ResponseModel>> getToDo() async {
    List<ResponseModel> todoList = [];
    var dioGet = Dio();
    Response responseGet = await dioGet.get(url);
    if (responseGet.statusCode == 200 && responseGet.data["error"] == null) {
      (responseGet.data['data'] as List<dynamic>).forEach((element) {
        todoList.add(ResponseModel.fromMap(element));
      });
    }
    return todoList;
  }
}
