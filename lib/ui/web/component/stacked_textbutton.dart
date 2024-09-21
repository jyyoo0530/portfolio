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

class StackedTextButtonTextOnly extends StatefulWidget {
  final double width;
  final double height;
  final double ratio;
  final String titleText = "Put Your Title";
  final String bodyText = "Put your body text as variable";
  final int animationDuration;
  final double animationDensity;

  const StackedTextButtonTextOnly({
    super.key,
    this.width = 390,
    this.height = 370,
    this.ratio = 0.4,
    this.animationDuration = 300,
    this.animationDensity = 0.6,
  });

  @override
  _StackedTextButtonTextOnlyState createState() =>
      _StackedTextButtonTextOnlyState();
}

class _StackedTextButtonTextOnlyState extends State<StackedTextButtonTextOnly> {
  double _borderRadius = 20.0;
  Color _borderColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Theme.of(context).colorScheme.surfaceContainerHigh;

    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
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
            _borderRadius = _borderRadius == 20.0 ? 40.0 : 20.0;
          });
        }
        // _backgroundColor = Colors.red;
      },
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(horizontal: 20),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text('${widget.titleText}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('${widget.bodyText}'),
            ),
          ],
        ),
      ),
    );
  }
}
