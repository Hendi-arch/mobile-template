import 'package:flutter/material.dart';
import 'package:mobile_template/app/app.locator.dart';
import 'package:mobile_template/shared/size_config.dart';

class CustomButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final Function? onPressed;
  final String captionButton;

  final SizeConfig? _sizeConfig = locator<SizeConfig>();

  CustomButtonWidget({Key? key, this.onPressed, this.width = 298, this.height = 36, required this.captionButton})
      : assert(width != null),
        assert(height != null),
        assert(captionButton != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: _sizeConfig!.getWidth(context, width),
        height: _sizeConfig!.getWidth(context, height),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color(0xffA0CB53), Color(0xff6A9849)],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter),
            borderRadius: BorderRadius.circular(86.0)),
        child: TextButton(
            child: Text(captionButton,
                style: TextStyle(
                    fontFamily: 'Lato', color: Colors.white, fontSize: 14 * _sizeConfig!.getScaleDiagonal(context))),
            onPressed: onPressed as void Function()?,
            style: ButtonStyle(
                visualDensity: VisualDensity.adaptivePlatformDensity,
                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(86.0))))));
  }
}
