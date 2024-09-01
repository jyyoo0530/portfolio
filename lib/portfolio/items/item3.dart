import 'package:flutter/material.dart';

import 'base.dart';

class CarouselItemThree extends StatelessWidget implements CarouselItem {
  const CarouselItemThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black38,
          width: double.infinity,
          height: double.infinity,
          child: Text("ITEM3"),
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
