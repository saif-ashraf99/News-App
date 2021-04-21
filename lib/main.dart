import 'package:flutter/material.dart';
import 'package:news_application/pages/homePage.dart';
import 'components/customListTile.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
