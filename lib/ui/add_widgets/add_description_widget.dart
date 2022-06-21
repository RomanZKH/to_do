import 'package:to_do_app/ui/index/index.dart';

class AddDescription extends StatelessWidget {
  final String hint;
  final double contentPaddingLeft;
  final double contentPaddingTop;
  final double contentPaddingRight;
  final TextEditingController? textEditingController;

  AddDescription({
    this.hint = "",
    this.textEditingController,
    this.contentPaddingLeft = 0.0,
    this.contentPaddingTop = 0,
    this.contentPaddingRight = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.10,
      color: const Color(0xFFFBEFB4),
      child: TextFormField(
        maxLines: 5,
        obscureText: false,
        expands: false,
        keyboardType: TextInputType.text,
        controller: description,
        maxLength: 30,
        decoration: InputDecoration(
          counterText: "",
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: const BorderSide(width: 0, color: Color(0xFFFBEFB4))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: const BorderSide(width: 0, color: Color(0xFFFBEFB4))),
          hintText: hint,
          hintStyle: GoogleFonts.dmSerifDisplay(
            color: const Color(0xFF383838),
            fontSize: 19,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.4,
          ),
          filled: true,
          fillColor: const Color(0xFFFBEFB4),
          contentPadding: EdgeInsets.only(
            left: contentPaddingLeft,
            top: contentPaddingTop,
            right: contentPaddingRight,
          ),
        ),
      ),
    );
  }
}
