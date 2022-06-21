import '../index/index.dart';

class CustomCheckBox extends StatelessWidget {
  Function? function;
  Color? color;


  CustomCheckBox({this.function, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function?.call();
      },
      child: Container(
        padding: const EdgeInsets.all(2.9),
        height: Get.height * 0.041,
        width: Get.width * 0.078,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            color: const Color(0xFFDBDBDB),
            border: Border.all(color: const Color(0xFFDBDBDB), width: 2.4)),
        child: Flex(
          direction: Axis.horizontal,
          children: <Flexible>[
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: color ?? const Color(0xFFDBDBDB)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
