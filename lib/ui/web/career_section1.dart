import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WebCareerSection1 extends StatelessWidget {
  WebCareerSection1({super.key});

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
                          "Career",
                          style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.w600,
                            height: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                          "Always try to learn new technologies and implement it in the project.",
                          style: Theme
                              .of(context)
                              .textTheme
                              .titleLarge),
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
