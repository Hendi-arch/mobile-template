import 'package:flutter/material.dart';
import '../basic/icon_widget.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;

  IconButtonWidget({Key? key, required this.iconData, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed as void Function()?,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        icon: IconWidget(iconData: iconData, color: Colors.white));
  }
}
