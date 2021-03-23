import 'package:flutter/material.dart';
import 'package:mobile_template/app/app.locator.dart';
import 'package:mobile_template/shared/size_config.dart';

class CustomTextWidget extends StatelessWidget {
  final double size;
  final Color color;
  final String caption;
  final FontWeight fontWeight;
  final SizeConfig? _sizeConfig = locator<SizeConfig>();

  CustomTextWidget(
      {Key? key, this.size = 14, required this.caption, this.color = Colors.white, this.fontWeight = FontWeight.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(caption,
        style: TextStyle(
            color: color,
            fontFamily: 'Lato',
            fontWeight: fontWeight,
            fontSize: size * _sizeConfig!.getScaleDiagonal()));
  }
}
