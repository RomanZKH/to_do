import '../index/index.dart';

class TODOItem extends StatefulWidget {
  final String item_name;
  final String date;

  TODOItem({this.item_name = "", this.date = ""});

  @override
  State<TODOItem> createState() => _TODOItemState();
}

class _TODOItemState extends State<TODOItem> {
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 7, right: 7),
      width: Get.width * 0.80,
      height: Get.height * 0.08,
      decoration: const BoxDecoration(
          color: Color(0xFFDBDBDB),
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset("assets/icons/home.svg"),
          SizedBox(width: Get.width * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomText(
                  text: widget.item_name,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF383838),
                  textAlign: TextAlign.start,
                ),
                SizedBox(width: Get.width * 0.03),
                CustomText(
                  fontWeight: FontWeight.w600,
                  text: widget.date,
                  fontSize: 13,
                  color: const Color(0xFF383838),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          Transform.scale(
            scale: 2.0,
            child: Checkbox(
                fillColor: MaterialStateProperty.all(const Color(0xFFFBEFB4)),
                checkColor: const Color(0xFF383838),
                autofocus: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                side: MaterialStateBorderSide.resolveWith(
                  (states) =>
                      const BorderSide(width: 1.1, color: Color(0xFF383838)),
                ),
                value: _check,
                onChanged: (value) {
                  setState(() {
                    _check = value!;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
