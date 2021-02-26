import 'package:flutter/material.dart';

void main() => runApp(AnlamBakimindan());

class AnlamBakimindan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Söz Sanatları'),
      ),
      body: Center(
        child: Container(
          child: Text('Ders Konuları'),
        ),
      ),
    );
  }
}
