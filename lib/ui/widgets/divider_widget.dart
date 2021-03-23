import 'package:flutter/material.dart';
import 'package:mobile_template/app/app.locator.dart';
import 'package:mobile_template/shared/size_config.dart';

class DividerWidget extends StatelessWidget {
  final double width;
  final double height;
  final SizeConfig? _sizeConfig = locator<SizeConfig>();

  DividerWidget({Key? key, this.width = 0, this.height = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: _sizeConfig!.getWidth(context, width),
        height: _sizeConfig!.getHeight(context, height));
  }
}
