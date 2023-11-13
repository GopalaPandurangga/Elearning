import 'package:flutter/material.dart';

import 'core.dart';
import 'main_navigation/view/main_navigation_view.dart';

//! instagram
//! @suss.tain

//? source code
//? on my GitHub




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

final Color myColor = Color.fromARGB(255, 46, 124, 196);

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slicing UI 1',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(
          myColor.value,
          <int, Color>{
            50: myColor,
            100: myColor,
            200: myColor,
            300: myColor,
            400: myColor,
            500: myColor,
            600: myColor,
            700: myColor,
            800: myColor,
            900: myColor,
          },
        ),
        fontFamily: 'Helvetica',
      ),
      home: MainNavigationView(),
    );
  }
}
