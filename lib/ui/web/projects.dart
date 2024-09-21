import 'package:flutter/cupertino.dart';
import 'package:portfolio/ui/web/projects_section1.dart';
import 'package:portfolio/ui/web/projects_section2.dart';

class WebProjects extends StatelessWidget {
  const WebProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            WebProjectsSection1(),
            SizedBox(height: 100),
            WebProjectsSection2(),
          ],
        ),
      ),
    );
  }
}
