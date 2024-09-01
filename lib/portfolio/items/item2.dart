import 'package:flutter/material.dart';

import 'base.dart';

class CarouselItemTwo extends StatelessWidget implements CarouselItem {
  const CarouselItemTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black26,
          width: double.infinity,
          height: double.infinity,
          child: Text("ITEM2"),
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
