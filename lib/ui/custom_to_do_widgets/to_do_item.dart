import '../index/index.dart';

class TODOItem extends StatefulWidget {
  String? taskId;
  int? status;
  String? name;
  int? type;
  String? description;
  String? finishDate;
  int? urgent;
  String? file;

  TODOItem(
      {this.taskId,
      this.status,
      this.name,
      this.type,
      this.description,
      this.finishDate,
      this.urgent,
      this.file});

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
      decoration: BoxDecoration(
          color: widget.urgent == 0
              ? const Color(0xFFDBDBDB)
              : const Color(0xFFFF8989),
          borderRadius: const BorderRadius.all(Radius.circular(14))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          widget.type == 1
              ? SvgPicture.asset("assets/icons/home.svg")
              : SvgPicture.asset("assets/icons/work.svg"),
          SizedBox(width: Get.width * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomText(
                  text: widget.name!,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF383838),
                  textAlign: TextAlign.start,
                ),
                SizedBox(width: Get.width * 0.03),
                CustomText(
                  fontWeight: FontWeight.w600,
                  text: widget.finishDate!,
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
