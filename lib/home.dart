import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:portfolio/portfolio/portfolio_component.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableCarousel(
      options: ExpandableCarouselOptions(
        padEnds: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 10),
        viewportFraction: 1.0,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return PortfolioComponent();
          },
        );
      }).toList(),
    );
  }
}
