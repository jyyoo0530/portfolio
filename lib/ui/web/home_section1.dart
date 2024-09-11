import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebHomeSection1 extends StatelessWidget {
  WebHomeSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 1,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 900,
            ),
            child: Container(
              height: 550,
              child: Card.filled(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Material Design",
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.w600,
                          height: 1.0,
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                          "Material 3 is the latest version of Google's open-source design system. Design and build beautiful, usable products with Material 3.",
                          style: Theme.of(context).textTheme.titleLarge),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 80,
                          width: 200,
                          child: FilledButton(
                            onPressed: () {},
                            child: Text("Get Started",
                                style: TextStyle(fontSize: 23)),
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
                child: Text("Asdfasdfads"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
