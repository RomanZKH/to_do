import 'package:to_do_app/dio_service/dio_service.dart';

import '../index/index.dart';

class CreateToDo extends StatefulWidget {
  @override
  State<CreateToDo> createState() => _CreateToDoState();
}

class _CreateToDoState extends State<CreateToDo> {
  ButtonsEnum? buttonsEnum;
  TerminationDate terminationDate = TerminationDate();
  UrgentMarker urgentMarker = UrgentMarker();
  int taskId = 0;
  ToDoStatus toDoStatus = ToDoStatus();

  @override
  Widget build(BuildContext context) {
    return CommonGradient(
      child: Column(
        children: <Widget>[
          SizedBox(height: Get.height * 0.07),
         // Header(headerName: "Назва завдання..."),
          SizedBox(height: Get.height * 0.04),
          ToDoStatus(),
          SizedBox(
            height: Get.height * 0.042,
          ),
          AddDescription(
              textEditingController: description,
              hint: "Додати опис...",
              contentPaddingLeft: 14,
              contentPaddingRight: 14,
              contentPaddingTop: 10),
          SizedBox(
            height: Get.height * 0.042,
          ),
          AddFile(),
          SizedBox(
            height: Get.height * 0.042,
          ),
          TerminationDate(),
          SizedBox(
            height: Get.height * 0.042,
          ),
          UrgentMarker(),
          SizedBox(
            height: Get.height * 0.042,
          ),
          GenericButton(
            labelSize: 21,
            circleBorder: 10,
            height: Get.height * 0.054,
            width: Get.width * 0.31,
            labelColor: const Color(0xFF383838),
            label: "Cтворити",
            colorBackGround: const Color(0xFFFFD600),
            function: () {
              String resultId = (taskId = taskId + 1) as String;
              // DioService.saveToDo(
              //     taskId : resultId,
              //     status,
              //     name,
              //     type : toDoStatus.type,
              //     description : description.text,
              //     finishDat : terminationDate.date,
              //     urgent : urgentMarker.urgent,
              //     file)
            },
          ),
        ],
      ),
    );
  }
}
