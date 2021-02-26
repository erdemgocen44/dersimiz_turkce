import 'package:dersimiz_turkce/home_screen.dart';
import 'package:dersimiz_turkce/menu_view.dart';
import 'package:dersimiz_turkce/screens/anlam_bakimindan_sozcukler.dart';
import 'package:dersimiz_turkce/turkce_konulari.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreenView(),
      initialRoute: '/',
      routes: {
        '/MenuViewPage': (context) => MenuView(),
        '/TurkceKonulariPage': (context) => TurkishLessonView(),
        '/AnlamBakimindanPage': (context) => AnlamBakimindan(),
      },
      theme: ThemeData(fontFamily: 'Dekko'),
      debugShowCheckedModeBanner: false,
    );
  }
}
