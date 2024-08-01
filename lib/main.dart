import 'package:rent_app/styles/colors.dart';
import 'package:rent_app/ui/screens/home/home.screen.dart';

import 'common_libs.dart';

void main() {
  runApp(const HomeScreen());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appTheme = AppColors();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme.getThemeData(),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
