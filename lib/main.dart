import 'package:flutter/material.dart';
import 'package:store_app/screens/launch_screen.dart';
import 'package:store_app/screens/main_screen.dart';
void main() => runApp(MainApp());
class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen' : (context) => LaunchScreen(),
        '/main_screen' : (context) => MainScreen(),


      },
    );
  }
}
