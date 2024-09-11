import 'package:flutter/material.dart';
import 'package:portfolio/ui/web/home_section1.dart';
import 'package:portfolio/ui/web/home_section2.dart';

class WebHome extends StatelessWidget {
  const WebHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WebHomeSection1(),
            SizedBox(height: 100),
            WebHomeSection2(),
          ],
        ),
      ),
    );
  }
}
