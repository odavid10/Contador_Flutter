import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowChekedModeBanner : false,
      home: Center(
        child: ContadorPage(),
      ),
    );
  }
}