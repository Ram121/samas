import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samas/screens/deatils_page.dart';
import 'package:samas/screens/description_page.dart';
import 'package:samas/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Samas Expalination',
      initialRoute: MyHomePage.id,
      routes: {
        MyHomePage.id: (context) => MyHomePage(),
        SamasDescription.id: (context) => SamasDescription(),
        SamasDetails.id: (context) => SamasDetails(),
      },
    );
  }
}
