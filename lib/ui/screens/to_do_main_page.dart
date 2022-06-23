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
                        context.read<MainProvider>().sortToDoByType(-1);
                      });
                    }),
                ToDoButton(
                    color: buttonsEnum == ButtonsEnum.workRelated
                        ? const Color(0xFFFBEFB4)
                        : null,
                    text: "Робочi",
                    function: () {
                      setState(() {
                        buttonsEnum = ButtonsEnum.workRelated;
                        context.read<MainProvider>().sortToDoByType(2);
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
                        context.read<MainProvider>().sortToDoByType(1);
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
                itemCount: context.watch<MainProvider>().sorted.length,
                itemBuilder: (BuildContext context, int index) {
                  ResponseModel response =
                      context.watch<MainProvider>().sorted[index];
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
