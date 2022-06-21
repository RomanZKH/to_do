import 'package:to_do_app/ui/index/index.dart';


class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CreateToDo()),
        );
      },
      backgroundColor: const Color(0xFFFFD600),
      elevation: 0.7,
      child: SvgPicture.asset("assets/icons/add_icon.svg"),
    );
  }
}
