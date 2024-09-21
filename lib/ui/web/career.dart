import 'package:flutter/cupertino.dart';
import 'package:portfolio/ui/web/career_section1.dart';
import 'package:portfolio/ui/web/career_section2.dart';

class WebCareer extends StatelessWidget {
  const WebCareer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WebCareerSection1(),
            SizedBox(height: 100),
            WebCareerSection2(),
          ],
        ),
      ),
    );
  }
}
