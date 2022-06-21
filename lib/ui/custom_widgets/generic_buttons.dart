import '../index/index.dart';

class GenericButton extends StatelessWidget {
  final double height;
  final double width;
  final Color colorBackGround;
  final String? label;
  final double labelSize;
  final Color? labelColor;
  final double letSpace;
  final FontWeight fontWeightLabel;
  final double elevation;
  final double borderWit;
  final Color? borderColor;
  final double circleBorder;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final double paddingButton;
  final Function? function;
  final Alignment? alignment;

  GenericButton({
    this.alignment,
    this.height = 0.061,
    this.width = 0.72,
    this.function,
    this.colorBackGround = Colors.white,
    this.label,
    this.labelSize = 17,
    this.labelColor,
    this.letSpace = 0,
    this.fontWeightLabel = FontWeight.w600,
    this.elevation = 1.4,
    this.borderWit = 0,
    this.borderColor,
    this.circleBorder = 9,
    this.paddingLeft = 0,
    this.paddingRight = 0,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.paddingButton = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            alignment: alignment,
            backgroundColor: colorBackGround,
            elevation: elevation,
            padding: EdgeInsets.fromLTRB(paddingLeft, paddingTop,
                paddingRight, paddingBottom),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(circleBorder)),
            side: BorderSide(
                width: borderWit,
                color: borderColor ?? Colors.transparent),
          ),
          onPressed: () {
            if (function != null) {
              function?.call();
            }
          },
          child: CustomText(
            text: label ?? "",
            fontSize: labelSize,
            fontWeight: fontWeightLabel,
            color: labelColor ?? Colors.white,
            letterSpacing: letSpace,
            textAlign: TextAlign.center,
          )),
    );
  }
}


class ToDoButton extends StatelessWidget {
  final String text;
  final Function? function;
  final Color? color;

  ToDoButton({this.text = "", this.function, this.color});

  @override
  Widget build(BuildContext context) {
    return GenericButton(
      circleBorder: 17,
      function: () {
        function?.call();
      },
      label: text,
      labelColor: const Color(0xFF383838),
      colorBackGround: color ?? const Color(0xFFDBDBDB),
      height: Get.height * 0.053,
      width: Get.width * 0.25,
    );
  }
}
