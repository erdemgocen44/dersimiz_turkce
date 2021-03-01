import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class YoutubePage extends StatelessWidget {
  var pembe = Colors.pink[600];
  var yesil = Color(0xFF9ec22a);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Carousel(
              images: [
                ExactAssetImage("assets/sinif5.jpg"),
                ExactAssetImage("assets/sinif6.jpg"),
                ExactAssetImage("assets/sinif7.jpg"),
                ExactAssetImage("assets/sinif8.jpg"),
              ],
              dotSize: 5.0,
              dotSpacing: 35.0,
              dotColor: yesil,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.white,
              borderRadius: true,
            ),
          ),
        ),
      ),
    );
  }
}
