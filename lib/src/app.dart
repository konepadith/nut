import 'package:flutter/material.dart';
import 'package:nut/src/pages/home/home_page.dart';
import 'package:nut/src/pages/login/login_page.dart';
import 'package:nut/src/pages/route.dart';

class CMApp extends StatelessWidget {
  const CMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CMApp",
      routes: AppRoute.all,
      home: LogingPage(),
      debugShowCheckedModeBanner: false, //remove banner
    );
  }
}
