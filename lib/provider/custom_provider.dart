import 'package:to_do_app/dio_service/dio_service.dart';
import 'package:to_do_app/ui/index/index.dart';

import '../dio_model/get_model.dart';

class MainProvider with ChangeNotifier {
  DioService _dioService = DioService();
  List<ResponseModel> list = [];

  void getToDoItem() async {
    list = await _dioService.getToDo();
    print(list.length);
    notifyListeners();
  }
}
