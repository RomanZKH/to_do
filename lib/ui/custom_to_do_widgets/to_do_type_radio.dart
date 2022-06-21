import '../index/index.dart';

class ToDoStatus extends StatefulWidget {
  @override
  State<ToDoStatus> createState() => _ToDoStatusState();
}

class _ToDoStatusState extends State<ToDoStatus> {
  ButtonsEnum? buttonsEnum;
  int type = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 14, right: 14),
        height: Get.height * 0.06,
        color: const Color(0xFFFBEFB4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CustomCheckBox(
                  color: buttonsEnum == ButtonsEnum.workRelated
                      ? const Color(0xFFFFD600)
                      : null,
                  function: () {
                    setState(() {
                      buttonsEnum = ButtonsEnum.workRelated;
                      type = 1;
                    });
                  },
                ),
                SizedBox(width: Get.width * 0.05),
                CustomText(
                  text: "Робочi",
                  color: const Color(0xFF383838),
                  fontSize: 20,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                CustomCheckBox(
                  color: buttonsEnum == ButtonsEnum.personal
                      ? const Color(0xFFFFD600)
                      : null,
                  function: () {
                    setState(() {
                      buttonsEnum = ButtonsEnum.personal;
                      type = 2;
                    });
                  },
                ),
                SizedBox(width: Get.width * 0.05),
                CustomText(
                  text: "Ocoбистi",
                  color: const Color(0xFF383838),
                  fontSize: 20,
                ),
              ],
            ),
          ],
        ));
  }
}

class UrgentMarker extends StatefulWidget {
  @override
  State<UrgentMarker> createState() => _UrgentMarkerState();
}

class _UrgentMarkerState extends State<UrgentMarker> {
  ButtonsEnum? buttonsEnum;
  int urgent = 0;
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14, right: 14),
      height: Get.height * 0.06,
      color: const Color(0xFFFBEFB4),
      child: Row(
        children: <Widget>[
          CustomCheckBox(
            color: !pressed ? null : const Color(0xFFFFD600),
            function: () {
              setState(() {
                pressed = !pressed;
                urgent = 1;
              });
            },
          ),
          SizedBox(width: Get.width * 0.05),
          CustomText(
            text: "Термiновi",
            color: const Color(0xFF383838),
            fontSize: 20,
          ),
        ],
      ),
    );
  }
}
