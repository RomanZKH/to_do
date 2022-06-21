import 'package:to_do_app/ui/index/index.dart';

class Header extends StatelessWidget {
  final String headerName;
  final String? assetsSave;
  final Function? function;

  Header({this.headerName = "", this.assetsSave, this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset("assets/icons/yellow_arrow.svg"),
          ),
          CustomText(
            text: headerName,
            fontWeight: FontWeight.w500,
            fontSize: 20,
            letterSpacing: 0.9,
          ),
          GestureDetector(
              onTap: () {
                function?.call();
              },
              child: SvgPicture.asset(assetsSave!))
        ],
      ),
    );
  }
}
