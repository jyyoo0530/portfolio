import 'package:flutter/cupertino.dart';
import 'package:portfolio/ui/web/skills_section1.dart';

class WebSkills extends StatelessWidget {
  const WebSkills({super.key});

  @override
  Widget build(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Container(
      width: double.infinity,
      child: Column(
        children: [
          WebSkillsSection1(),
          SizedBox(height: 100),
        ],
      ),
    ),
  );
  }
}