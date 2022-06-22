import 'package:provider/provider.dart';
import 'package:to_do_app/provider/custom_provider.dart';
import 'package:to_do_app/ui/index/index.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MultiProvider(
    child: MyApp(),
    providers: [ChangeNotifierProvider(create: (_) => MainProvider())],
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EnterScreen(),
    );
  }
}
