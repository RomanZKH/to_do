import '../index/index.dart';

class EditToDo extends StatefulWidget {
  @override
  State<EditToDo> createState() => _EditToDoState();
}

class _EditToDoState extends State<EditToDo> {
  @override
  Widget build(BuildContext context) {
    return CommonGradient(
      child: Column(
        children: <Widget>[
          SizedBox(height: Get.height * 0.03),
          Header(
            assetsSave: "assets/icons/check.svg",
            function: () {},
          ),
          SizedBox(height: Get.height * 0.04),
          ToDoStatus(),
          SizedBox(
            height: Get.height * 0.042,
          ),
          AddDescription(
              textEditingController: description,
              hint:
                  description.text.isEmpty ? "Додати опис" : description.text),
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
          Container(
            padding: const EdgeInsets.only(left: 14),
            height: Get.height * 0.06,
            color: const Color(0xFFFBEFB4),
            child: Row(
              children: <Widget>[
                CustomCheckBox(),
                SizedBox(width: Get.width * 0.05),
                CustomText(
                  text: "Термiнове",
                  color: const Color(0xFF383838),
                  fontSize: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.037,
          ),
          GenericButton(
            labelSize: 21,
            circleBorder: 10,
            height: Get.height * 0.054,
            width: Get.width * 0.31,
            labelColor: const Color(0xFF383838),
            label: "Видалити",
            colorBackGround: const Color(0xFFFF8989),
            function: () {},
          ),
        ],
      ),
    );
  }
}
