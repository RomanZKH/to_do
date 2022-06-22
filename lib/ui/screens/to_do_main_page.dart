import 'package:provider/provider.dart';
import 'package:to_do_app/dio_model/get_model.dart';
import 'package:to_do_app/provider/custom_provider.dart';

import '../index/index.dart';

class MainToDoListPage extends StatefulWidget {
  @override
  State<MainToDoListPage> createState() => _MainToDoListPageState();
}

class _MainToDoListPageState extends State<MainToDoListPage> {
  ButtonsEnum? buttonsEnum;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonGradient(
        floatingAction: const CustomFloatingButton(),
        child: Column(
          children: <Widget>[
            SizedBox(height: Get.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ToDoButton(
                    color: buttonsEnum == ButtonsEnum.all
                        ? const Color(0xFFFBEFB4)
                        : null,
                    text: "Bci",
                    function: () {
                      setState(() {
                        buttonsEnum = ButtonsEnum.all;
                      });
                    }),
                ToDoButton(
                    color: buttonsEnum == ButtonsEnum.workRelated
                        ? const Color(0xFFFBEFB4)
                        : null,
                    text: "Робочi",
                    function: () {
                      //allItems.clear();
                      setState(() {
                        buttonsEnum = ButtonsEnum.workRelated;
                        //  allItems.addAll(jobRelatedItems);
                      });
                    }),
                ToDoButton(
                    color: buttonsEnum == ButtonsEnum.personal
                        ? const Color(0xFFFBEFB4)
                        : null,
                    text: "Ocoбистi",
                    function: () {
                      setState(() {
                        buttonsEnum = ButtonsEnum.personal;
                          
                      });
                    }),
              ],
            ),
            SizedBox(height: Get.height * 0.03),
            Container(
              width: Get.width * 0.88,
              height: Get.height * 0.38,
              child: ListView.separated(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
                shrinkWrap: true,
                itemCount: context.watch<MainProvider>().list.length,
                itemBuilder: (BuildContext context, int index) {
                  ResponseModel response =
                      context.watch<MainProvider>().list[index];
                  return TODOItem(
                    taskId: response.taskId,
                    status: response.status,
                    name: response.name,
                    finishDate: response.finishDate,
                    description: response.description,
                    file: response.file,
                    type: response.type,
                    urgent: response.urgent,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: Get.height * 0.02);
                },
              ),
            ),
          ],
        ));
  }
}
