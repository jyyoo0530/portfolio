import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class StackedTextButton extends StatefulWidget {
  final double width;
  final double height;
  final double ratio;
  final int animationDuration;
  final double animationDensity;

  const StackedTextButton({
    super.key,
    this.width = 390,
    this.height = 370,
    this.ratio = 0.4,
    this.animationDuration = 300,
    this.animationDensity = 0.6,
  });

  @override
  _StackedTextButtonState createState() => _StackedTextButtonState();
}

class _StackedTextButtonState extends State<StackedTextButton> {
  double _borderRadius = 30.0;
  Color _borderColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Theme.of(context).colorScheme.surfaceContainerHigh;

    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60.0),
      ),
      onHover: (isHovering) {
        if (mounted) {
          setState(
            () {
              backgroundColor = isHovering
                  ? Theme.of(context).colorScheme.surfaceContainerHighest
                  : Theme.of(context).colorScheme.surfaceContainerHigh;
            },
          );
        }
      },
      onTap: () {
        if (mounted) {
          setState(() {
            _borderColor = _borderColor == Colors.transparent
                ? Theme.of(context).colorScheme.outline
                : Colors.transparent;
            _borderRadius = _borderRadius == 30.0 ? 60.0 : 30.0;
          });
        }
        // _backgroundColor = Colors.red;
      },
      child: AnimatedContainer(
        width: widget.width,
        height: widget.height,
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: widget.animationDuration),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(_borderRadius),
          border: Border.all(
            width: 3,
            color: _borderColor,
          ),
          // border: BorderColor
        ),
      ),
    );
  }
}

// ,AnimatedContainer(
// padding: EdgeInsets.zero,
// width: widget.width,
// height: widget.height,
// duration: Duration(milliseconds: widget.animationDuration),
// curve: Curves.easeInOut,
// decoration: BoxDecoration(
// border: Border.all(width: 2.0, color: _borderColor),
// borderRadius: BorderRadius.circular(_borderRadius),
// color: Theme.of(context).colorScheme.surfaceContainerHigh,
// ),
// child: Column(
// children: [
// ClipRRect(
// borderRadius: BorderRadius.circular(_borderRadius),
// child: LottieBuilder.asset("lottie_2.json",
// fit: BoxFit.fill),
// ),
// ],
// ),
// );
