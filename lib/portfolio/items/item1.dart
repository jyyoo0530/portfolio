import 'package:flutter/material.dart';

import 'base.dart';

class CarouselItemOne extends StatelessWidget implements CarouselItem {
  const CarouselItemOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black12,
          width: double.infinity,
          height: double.infinity,
          child: Text("ITEM1"),
        ),
        Positioned(
          bottom: 100,
          right: 150,
          child: FilledButton(
            onPressed: () {},
            child: Text('See More..'),
          ),
        ),
      ],
    );
  }
}

class PortfolioItemOne extends StatelessWidget{
  const PortfolioItemOne({super.key});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(),
      ],
    );
  }
}