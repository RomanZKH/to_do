import '../index/index.dart';

List<TODOItem> allItems = [];

List<TODOItem> jobRelatedItems = [
  TODOItem(item_name: "what the flutter ?", date: "23/01/22"),
  TODOItem(item_name: "what the flutter ?", date: "23/01/22")
];

List<TODOItem> personalItems = [
  TODOItem(item_name: "what the flutter ?", date: "23/01/22")
];

class MainToDoListPage extends StatefulWidget {
  @override
  State<MainToDoListPage> createState() => _MainToDoListPageState();
}

class _MainToDoListPageState extends State<MainToDoListPage> {
  ButtonsEnum? buttonsEnum;

  @override
  void initState() {
    super.initState();
    allItems.addAll(jobRelatedItems);
    allItems.addAll(personalItems);
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
                      allItems.clear();
                      setState(() {
                        buttonsEnum = ButtonsEnum.all;
                        allItems.addAll(jobRelatedItems);
                        allItems.addAll(personalItems);
                      });
                    }),
                ToDoButton(
                    color: buttonsEnum == ButtonsEnum.workRelated
                        ? const Color(0xFFFBEFB4)
                        : null,
                    text: "Робочi",
                    function: () {
                      allItems.clear();
                      setState(() {
                        buttonsEnum = ButtonsEnum.workRelated;
                        allItems.addAll(jobRelatedItems);
                      });
                    }),
                ToDoButton(
                    color: buttonsEnum == ButtonsEnum.personal
                        ? const Color(0xFFFBEFB4)
                        : null,
                    text: "Ocoбистi",
                    function: () {
                      allItems.clear();
                      setState(() {
                        buttonsEnum = ButtonsEnum.personal;
                        allItems.addAll(personalItems);
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
                itemCount: allItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return allItems[index];
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
