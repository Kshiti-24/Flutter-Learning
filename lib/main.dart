
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/home_page.dart';
import 'package:login/screens/login_page.dart';
import 'package:login/utils/routes.dart';
import 'package:login/widgets/themes.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int num=1;
    String name="Kshitiz Agarwal";
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      themeMode: ThemeMode.light,
      theme:MyTheme.lightTheme(context),
      darkTheme:MyTheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
