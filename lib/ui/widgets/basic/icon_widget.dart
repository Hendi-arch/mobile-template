import 'package:flutter/material.dart';
import 'package:mobile_template/app/app.locator.dart';
import 'package:mobile_template/shared/size_config.dart';

class IconWidget extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final SizeConfig? _sizeConfig = locator<SizeConfig>();

  IconWidget({Key? key, this.color = Colors.teal, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) => Icon(iconData, color: color, size: 26 * _sizeConfig!.getScaleDiagonal());
}
