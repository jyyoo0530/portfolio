import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class StackedTextButton extends StatelessWidget {
  final double width;

  const StackedTextButton({super.key, this.width = 390});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: 370,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor:
                  Theme.of(context).colorScheme.surfaceContainerHigh,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: Text(
                    "Material Design at Google I/O",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: Text(
                    "See the full list of Material talks and tutorials launchingat I/O 2024",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
        Container(
          width: width,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: LottieBuilder.asset("lottie_2.json", fit: BoxFit.fill),
          ),
        ),
      ],
    );
  }
}
