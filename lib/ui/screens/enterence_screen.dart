import 'package:provider/provider.dart';
import 'package:to_do_app/provider/custom_provider.dart';

import '../../dio_service/dio_service.dart';
import '../index/index.dart';

class EnterScreen extends StatelessWidget {
  DioService dioService = DioService();

  @override
  Widget build(BuildContext context) {
    return CommonGradient(
      child: Center(
        child: GenericButton(
          height: Get.height * 0.054,
          width: Get.width * 0.220,
          colorBackGround: const Color(0xFFFFD600),
          labelSize: 22,
          label: "Bхiд",
          function: () {
            context.read<MainProvider>().getToDoItem();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainToDoListPage()),
            );
          },
          labelColor: const Color(0xFF383838),
          circleBorder: 14,
          letSpace: 0.4,
        ),
      ),
    );
  }
}
