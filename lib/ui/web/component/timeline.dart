import 'package:flutter/material.dart';

class TimelineNode extends StatelessWidget {
  final double height;
  final double nodeSize;
  final double nodeLineWidth;
  final String childPosition;
  final Widget child;

  const TimelineNode({
    super.key,
    this.height = 300,
    this.nodeSize = 20,
    this.nodeLineWidth = 3.0,
    required this.childPosition,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).colorScheme.outlineVariant;
    Color backgroundColor = Theme.of(context).colorScheme.surfaceContainer;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: nodeSize,
          height: nodeSize,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(nodeSize),
          ),
        ),
        Row(
          children: [
            Flexible(
              child: Container(
                color: Colors.transparent,
                width: double.infinity,
                height: height,
                child: childPosition == "left"
                ? child
                : null,
              ),
              flex: 1,
            ),
            SizedBox(
              width: nodeSize/2+10,
            ),
            Container(
              width: nodeLineWidth,
              height: height,
              color: Theme.of(context).colorScheme.outlineVariant,
            ),
            SizedBox(
              width: nodeSize/2+10 ,
            ),
            Flexible(
              child: Container(
                color: Colors.transparent,
                width: double.infinity,
                height: height,
                child: childPosition == "right"
                ? child
                : null,
              ),
              flex: 1,
            ),
          ],
        ),
      ],
    );
  }
}
