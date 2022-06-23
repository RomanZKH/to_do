import 'package:to_do_app/ui/index/index.dart';

class Header extends StatefulWidget {
  final String? assetsSave;
  final Function? function;
  TextEditingController? textEditingController;

  Header({this.assetsSave = "", this.function, this.textEditingController});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset("assets/icons/yellow_arrow.svg"),
          ),
          Container(
            width: Get.width * 0.5,
            height: Get.height * 0.05,
            color: Colors.transparent,
            child: TextFormField(
              controller: widget.textEditingController,
              onTap: () {
                setState(() {
                  context.read<CreateToDoProvider>().name =
                      widget.textEditingController?.text;
                });
              },
              maxLength: 12,
              decoration: InputDecoration(
                counterText: "",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide:
                        const BorderSide(width: 0, color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide:
                        const BorderSide(width: 0, color: Colors.transparent)),
                hintText: "Назва завдання...",
                hintStyle: GoogleFonts.dmSerifDisplay(
                  color: const Color(0xFF383838),
                  fontSize: 19,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.4,
                ),
                filled: true,
                fillColor: Colors.transparent,
                contentPadding: const EdgeInsets.only(
                  left: 3,
                  top: 1,
                  right: 3,
                ),
              ),
            ),
          ),
          GestureDetector(
              onTap: () {
                widget.function?.call();
              },
              child: SvgPicture.asset(widget.assetsSave!))
        ],
      ),
    );
  }
}
