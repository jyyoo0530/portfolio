import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import '../portfolio/items/item1.dart';
import '../portfolio/items/item2.dart';
import '../portfolio/items/item3.dart';
class MyCarousel extends StatelessWidget {
  final double height;

  const MyCarousel({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: CarouselSlider(
        options: CarouselOptions(
          height: height,
          viewportFraction: 1.0,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 1000),
        ),
        items: [
          CarouselItemOne(),
          CarouselItemTwo(),
          CarouselItemThree(),
        ],
      ),
    );
  }
}
