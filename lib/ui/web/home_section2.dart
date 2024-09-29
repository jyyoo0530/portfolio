import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/ui/web/component/stacked_textbutton.dart';
import 'package:portfolio/ui/web/web_strings.dart';

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
            child: Text(webLangSet["home_section2_head"]![Language.eng]!,
                style: Theme.of(context).textTheme.displayLarge),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  StackedTextButton(
                    backgroundImage: DecorationImage(
                      image: AssetImage("image/home_project_freight9.png"),
                      fit: BoxFit.none,
                      scale: 1.6,
                    ),
                  ),
                  SizedBox(width: 10),
                  StackedTextButton(
                    backgroundImage: DecorationImage(
                      image: AssetImage("image/home_project_smols.png"),
                      fit: BoxFit.none,
                      scale: 1.3,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(width: 10),
                  StackedTextButton(
                    backgroundImage: DecorationImage(
                      image: AssetImage("image/home_project_hannunae.png"),
                      fit: BoxFit.none,
                      scale: 1.4,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  StackedTextButton(
                    backgroundImage: DecorationImage(
                        image: AssetImage("image/home_project_smolslab.png"),
                        fit: BoxFit.none,
                        scale: 1.0,
                        alignment: Alignment.center),
                  ),
                  SizedBox(width: 10),
                  StackedTextButton(
                    backgroundImage: DecorationImage(
                        image: AssetImage("image/home_project_pandora.png"),
                        fit: BoxFit.none,
                        scale: 1.5,
                        alignment: Alignment.center),
                  ),
                  SizedBox(width: 10),
                  StackedTextButton(
                    backgroundImage: DecorationImage(
                        image: AssetImage("image/home_project_viple.png"),
                        fit: BoxFit.none,
                        scale: 1.3,
                        alignment: Alignment.center),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  StackedTextButton(
                    backgroundImage: DecorationImage(
                        image: AssetImage("image/home_project_vit.png"),
                        fit: BoxFit.none,
                        scale: 1.5,
                        alignment: Alignment.center),
                  ),
                  SizedBox(width: 10),
                  StackedTextButton(
                    backgroundImage: DecorationImage(
                        image: AssetImage("image/home_project_playon.png"),
                        fit: BoxFit.none,
                        scale: 1.5,
                        alignment: Alignment.center),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
