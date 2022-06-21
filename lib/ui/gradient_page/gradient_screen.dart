import '../index/index.dart';

class CommonGradient extends StatelessWidget {
  final Widget? child;
  final Widget? floatingAction;

  CommonGradient({this.child, this.floatingAction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: floatingAction,
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFA9A9A9), Color(0xFF383838)])),
            child: child,
          ),
        ),
      ),
    );
  }
}
