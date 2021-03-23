import 'dart:math' as math;
import 'package:flutter/material.dart' show MediaQuery, BuildContext;

class SizeConfig {
  // height
  final double dh = 736;
  // width
  final double dw = 414;
  // diagonal
  final double dd = 844.45;

  double getWidth(BuildContext context, double dx) {
    double result = dx / dw * MediaQuery.of(context).size.width;
    return result;
  }

  double getHeight(BuildContext context, double dy) {
    double result = dy / dh * MediaQuery.of(context).size.height;
    return result;
  }

  double getFontSize(BuildContext context, double size) {
    double result = size / 100 * 33;
    return result;
  }

  double getDiagonal(BuildContext context, double d) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return (d / dd * (math.sqrt((h * h) + (w * w))));
  }

  double getPaddingHeight(BuildContext context, double p) {
    double result = p / dh * MediaQuery.of(context).size.height;
    return result;
  }

  double getScreenHeight(BuildContext context) {
    double result = MediaQuery.of(context).size.height;
    return result;
  }

  double getScreenWidth(BuildContext context) {
    double result = MediaQuery.of(context).size.width;
    return result;
  }

  double getScaleDiagonal(BuildContext context) {
    double w = MediaQuery.of(context).size.height;
    double h = MediaQuery.of(context).size.width;
    return (dd / (math.sqrt((w * w) + (h * h))));
  }
}
