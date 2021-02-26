import 'package:dersimiz_turkce/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:dersimiz_turkce/screens/anlam_bakimindan_sozcukler.dart';

class HomeScreenView extends StatefulWidget {
  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: MenuView(),
      title: Text(
        'Yükleniyor...',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: Color(0xFF9ec22a),
        ),
      ),
      image: Image.asset('assets/logo.png'),
      photoSize: 120.0,
    );
  }
}
