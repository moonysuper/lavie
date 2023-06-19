import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'module/login/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // primarySwatch: HexColor('#1ABC00') as MaterialColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          systemOverlayStyle:SystemUiOverlayStyle(
            statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,

          ),
        ),
          fontFamily: 'Roboto',
          textTheme: const TextTheme(
            bodyText1: TextStyle(
              fontFamily: 'Roboto',
            ),
          ),
      ),
      debugShowCheckedModeBanner: false,
      home:  LoginScreen(),
    );
  }
}


