import 'package:to_do_app/ui/index/index.dart';

class CreateToDoProvider with ChangeNotifier {
  String? taskId;
  int? status;
  String? name;
  int? type;
  String? description;
  String? finishDate;
  int? urgent;
  String? file;

  void createNewTodo() {
    DioService dioService = DioService();
    dioService.saveToDo(_generateId(), status!, name!, type!, description!,
        finishDate!, urgent!, file!);
  }

  String _generateId() {
    int result = 1 + 1;
    return result as String;
  }
}
