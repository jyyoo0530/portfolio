import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/ui/web/component/stacked_textbutton.dart';

class WebSkillsSection1 extends StatelessWidget {
  const WebSkillsSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1600,
        maxHeight: 800,
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/avatar.png"),
            fit: BoxFit.cover,
          ),
          color: Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(
            30.0,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Get Started",
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w600,
                height: 1.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Get to know Material 3 - from UX guidance and tools to reusable\ncomponents and open-source code",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StackedTextButtonTextOnly(
                  width: 540,
                  height: 100,
                ),
                SizedBox(width: 5),
                StackedTextButtonTextOnly(
                  width: 540,
                  height: 100,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StackedTextButtonTextOnly(
                  width: 540,
                  height: 100,
                ),
                SizedBox(width: 5),
                StackedTextButtonTextOnly(
                  width: 540,
                  height: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
