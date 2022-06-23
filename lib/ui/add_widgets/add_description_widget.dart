import 'package:to_do_app/ui/index/index.dart';

class AddDescription extends StatefulWidget {
  final String hint;
  final TextEditingController? textEditingController;

  AddDescription({
    this.hint = "",
    this.textEditingController,
  });

  @override
  State<AddDescription> createState() => _AddDescriptionState();
}

class _AddDescriptionState extends State<AddDescription> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.10,
      color: const Color(0xFFFBEFB4),
      child: TextFormField(
        maxLines: 2,
        obscureText: false,
        expands: false,
        keyboardType: TextInputType.text,
        controller: description,
        onTap: () {
          setState(() {
            context.read<CreateToDoProvider>().description = description.text;
          });
        },
        maxLength: 30,
        decoration: InputDecoration(
          counterText: "",
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: const BorderSide(width: 0, color: Color(0xFFFBEFB4))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: const BorderSide(width: 0, color: Color(0xFFFBEFB4))),
          hintText: widget.hint,
          hintStyle: GoogleFonts.dmSerifDisplay(
            color: const Color(0xFF383838),
            fontSize: 19,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.4,
          ),
          filled: true,
          fillColor: const Color(0xFFFBEFB4),
          contentPadding: const EdgeInsets.only(
            left: 14,
            top: 10,
            right: 14,
          ),
        ),
      ),
    );
  }
}
