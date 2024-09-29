import 'package:flutter/cupertino.dart';

class WebSizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double blockSizeHorizontal = 0;
  static double blockSizeVertical = 0;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }

  static double setFontSize(double sizePercent) {
    return blockSizeHorizontal * sizePercent;
  }

  static double setContainerHeight(double heightPercent) {
    return blockSizeVertical * heightPercent;
  }

  static double setContainerWidth(double widthPercent) {
    return blockSizeHorizontal * widthPercent;
  }
}
