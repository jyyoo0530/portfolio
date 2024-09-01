import 'package:flutter/material.dart';
import 'package:portfolio/component/carousel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.deepOrange,
            width: double.infinity,
            height: 700,
            child: MyCarousel(height: 700),
          ),
          Container(
            color: Colors.cyan,
            width: double.infinity,
            height: 700,
            child: Text("Section2"),
          ),
          Container(
            color: Colors.amber,
            width: double.infinity,
            height: 700,
            child: Text("Section3"),
          ),
        ],
      ),
    );
  }
}
