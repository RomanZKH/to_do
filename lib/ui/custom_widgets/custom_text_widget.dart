import '../index/index.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? letterSpacing;
  final TextAlign? textAlign;

  CustomText({
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.letterSpacing,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.dmSerifDisplay(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
      textAlign: textAlign,
    );
  }
}
