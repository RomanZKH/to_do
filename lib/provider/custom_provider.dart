import 'package:to_do_app/ui/index/index.dart';

class MainProvider with ChangeNotifier {
  DioService _dioService = DioService();
  List<ResponseModel> toDoDataFromApi = [];
  List<ResponseModel> sorted = [];

  void getToDoItem() async {
    toDoDataFromApi = await _dioService.getToDo();
    toDoDataFromApi.forEach((element) {
      sorted.add(element.copy());
    });
    notifyListeners();
  }

  void sortToDoByType(int type) {
    if (type == -1) {
      sorted.clear();
      toDoDataFromApi.forEach((element) {
        sorted.add(element.copy());
      });
    }else {
      sorted =
          toDoDataFromApi.where((element) => element.type == type).toList();
    }
    notifyListeners();
  }
}
