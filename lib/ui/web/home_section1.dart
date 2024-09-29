import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/web_sizeconfig.dart';
import 'web_strings.dart';

class WebHomeSection1 extends StatelessWidget {
  WebHomeSection1({super.key});

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
              maxWidth: WebSizeConfig.setContainerWidth(50),
            ),
            child: Container(
              height: 550,
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
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          webLangSet["home_section1_head"]![Language.eng]!,
                          style: TextStyle(
                            fontSize: WebSizeConfig.setFontSize(6),
                            fontWeight: FontWeight.bold,
                            height: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          webLangSet["home_section1_body"]![Language.eng]!,
                          style: TextStyle(
                            fontSize: WebSizeConfig.setFontSize(1.3),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: WebSizeConfig.setContainerHeight(8),
                          width: WebSizeConfig.setContainerWidth(12),
                          child: FilledButton(
                            onPressed: () {},
                            child: Text(
                                webLangSet["home_section1_button"]![
                                    Language.eng]!,
                                style: TextStyle(
                                    fontSize: WebSizeConfig.setFontSize(1.1))),
                          ),
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
              maxWidth: 900,
            ),
            child: Container(
              height: 550,
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
