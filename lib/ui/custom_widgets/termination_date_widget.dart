import '../index/index.dart';

class TerminationDate extends StatefulWidget {
  DateTime? _dateTime;
  bool _isPressed = false;
  String date = "";



  @override
  State<TerminationDate> createState() => _TerminationDateState();
}

class _TerminationDateState extends State<TerminationDate> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget._isPressed = true;
        showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1950),
                lastDate: DateTime(2100))
            .then((value) {
          setState(() {
          widget.date =  (widget._dateTime = value) as String;
          });
        });
      },
      child: Container(
        padding: const EdgeInsets.only(right: 12, left: 12),
        height: Get.height * 0.06,
        color: const Color(0xFFFBEFB4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CustomText(
              text: "Дата завершення :",
              fontSize: 20,
              color: const Color(0xFF383838),
              letterSpacing: 0.3,
              textAlign: TextAlign.left,
            ),
            CustomText(
                text: !widget._isPressed
                    ? ''
                    : widget._dateTime.toString().substring(0, 11),
                fontSize: 20,
                color: const Color(0xFF383838)),
          ],
        ),
      ),
    );
  }
}

