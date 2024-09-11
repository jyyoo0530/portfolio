import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/ui/web/component/stacked_textbutton.dart';

class WebHomeSection2 extends StatelessWidget {
  WebHomeSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1200,
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Text("News & Launches",
                style: Theme.of(context).textTheme.displayLarge),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                StackedTextButton(),
                SizedBox(width: 10),
                StackedTextButton(),
                SizedBox(width: 10),
                StackedTextButton(),
              ],
            ),
            scrollDirection: Axis.horizontal,
          ),
        ],
      ),
    );
  }
}
