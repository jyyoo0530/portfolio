import 'package:flutter/material.dart';
import 'package:portfolio/ui/web/component/stacked_textbutton.dart';

class WebProjectsSection2 extends StatelessWidget {
  const WebProjectsSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1200,
      alignment: Alignment.center,
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  StackedTextButton(width: 595),
                  SizedBox(width: 10),
                  StackedTextButton(width: 595),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  StackedTextButton(width: 595),
                  SizedBox(width: 10),
                  StackedTextButton(width: 595),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  StackedTextButton(width: 595),
                  SizedBox(width: 10),
                  StackedTextButton(width: 595),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  StackedTextButton(width: 595),
                  SizedBox(width: 10),
                  StackedTextButton(width: 595),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
