import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/ui/web/web_strings.dart';

class WebProjectsSection1 extends StatelessWidget {
  const WebProjectsSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: 5),
        Flexible(
          flex: 1,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 890,
            ),
            child: Container(
              height: 600,
              child: Card.filled(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        child: Text(
                          webLangSet["projects_section1_head"]![Language.eng]!,
                          style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.w600,
                            height: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        child: Text(
                          webLangSet["projects_section1_body"]![Language.eng]!,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 890,
            ),
            child: Container(
              height: 600,
              width: double.infinity,
              child: Card.filled(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: LottieBuilder.asset("assets/lottie/lottie_1.json"),
              ),
            ),
          ),
        ),
        SizedBox(width: 5),
      ],
    );
  }
}
