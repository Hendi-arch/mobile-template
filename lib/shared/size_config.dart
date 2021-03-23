import 'dart:math' as math;
import 'package:flutter/material.dart';

class SizeConfig {
  // height
  final double dh = 736;
  // width
  final double dw = 414;
  // diagonal
  final double dd = 844.45;

  // device size general
  double? screenWidth;
  double? screenHeight;
  double? barHeightTop;
  double? barHeightBottom;
  bool? deviceOrientation;
  MediaQueryData? mediaQueryData;

  void initSizeDeviceInfo(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData!.size.width;
    screenHeight = mediaQueryData!.size.height;
    barHeightTop = mediaQueryData!.padding.top;
    barHeightBottom = mediaQueryData!.padding.bottom;
    deviceOrientation = mediaQueryData!.orientation == Orientation.portrait;
  }

  double getWidth(double dx) {
    double result = dx / dw * mediaQueryData!.size.width;
    return result;
  }

  double getHeight(double dy) {
    double result = dy / dh * mediaQueryData!.size.height;
    return result;
  }

  double getFontSize(double size) {
    double result = size / 100 * 33;
    return result;
  }

  double getDiagonal(double d) {
    double w = mediaQueryData!.size.width;
    double h = mediaQueryData!.size.height;
    return (d / dd * (math.sqrt((h * h) + (w * w))));
  }

  double getPaddingHeight(double p) {
    double result = p / dh * mediaQueryData!.size.height;
    return result;
  }

  double getScaleDiagonal() {
    double w = mediaQueryData!.size.width;
    double h = mediaQueryData!.size.height;
    return (dd / (math.sqrt((w * w) + (h * h))));
  }
}
