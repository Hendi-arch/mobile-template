import 'package:flutter/material.dart';
import 'package:flutter/services.dart'
    show FilteringTextInputFormatter, TextInputFormatter;
import 'package:mobile_template/app/app.locator.dart';
import 'package:mobile_template/shared/size_config.dart';

class CustomTextFormField extends StatelessWidget {
  final int maxLines;
  final bool readOnly;
  final Function? onTap;
  final Color fillColor;
  final double fontSize;
  final Color fontColor;
  final String labelText;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double borderRadius;
  final Color containerColor;
  final double inputAreaWidth;
  final Color inputBorderColor;
  final double inputAreaHeight;
  final EdgeInsets contentPadding;
  final EdgeInsets marginInputBox;
  final String obscuringCharacter;
  final TextInputType textInputType;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatter;
  final TextEditingController textEditingController;

  final SizeConfig? _sizeConfig = locator<SizeConfig>();

  CustomTextFormField(
      {Key? key,
      required this.labelText,
      required this.inputAreaWidth,
      required this.inputAreaHeight,
      required this.textEditingController,
      this.onTap,
      this.onChanged,
      this.validator,
      this.prefixIcon,
      this.suffixIcon,
      this.maxLines = 1,
      this.fontSize = 14,
      this.inputFormatter,
      this.readOnly = false,
      this.borderRadius = 86.0,
      this.obscureText = false,
      this.obscuringCharacter = '•',
      this.fillColor = Colors.white,
      this.contentPadding = EdgeInsets.zero,
      this.textInputType = TextInputType.text,
      this.containerColor = Colors.transparent,
      this.fontColor = const Color(0xffA0CB53),
      this.inputBorderColor = const Color(0xffA0CB53),
      this.marginInputBox = const EdgeInsets.symmetric(vertical: 10)})
      : assert(labelText != null),
        assert(inputAreaWidth != null),
        assert(inputAreaHeight != null),
        assert(textEditingController != null),
        super(key: key);

  CustomTextFormField.forNumberOnly(
      {Key? key,
      required this.labelText,
      required this.inputAreaWidth,
      required this.inputAreaHeight,
      required this.textEditingController,
      this.onTap,
      this.onChanged,
      this.validator,
      this.prefixIcon,
      this.suffixIcon,
      this.fontSize = 14,
      this.readOnly = false,
      this.obscureText = false,
      this.obscuringCharacter = '•',
      this.contentPadding = EdgeInsets.zero,
      this.containerColor = Colors.transparent,
      this.fontColor = const Color(0xffA0CB53),
      this.inputBorderColor = const Color(0xffA0CB53),
      this.marginInputBox = const EdgeInsets.symmetric(vertical: 10)})
      : this.maxLines = 1,
        this.borderRadius = 86.0,
        this.fillColor = Colors.white,
        this.textInputType = TextInputType.number,
        this.inputFormatter = <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        assert(labelText != null),
        assert(inputAreaWidth != null),
        assert(inputAreaHeight != null),
        assert(textEditingController != null),
        super(key: key);

  CustomTextFormField.forTextOnly(
      {Key? key,
      required this.labelText,
      required this.inputAreaWidth,
      required this.inputAreaHeight,
      required this.textEditingController,
      this.onTap,
      this.onChanged,
      this.validator,
      this.prefixIcon,
      this.suffixIcon,
      this.fontSize = 14,
      this.readOnly = false,
      this.obscureText = false,
      this.obscuringCharacter = '•',
      this.contentPadding = EdgeInsets.zero,
      this.containerColor = Colors.transparent,
      this.fontColor = const Color(0xffA0CB53),
      this.inputBorderColor = const Color(0xffA0CB53),
      this.marginInputBox = const EdgeInsets.symmetric(vertical: 10)})
      : this.maxLines = 1,
        this.borderRadius = 86.0,
        this.fillColor = Colors.white,
        this.textInputType = TextInputType.text,
        this.inputFormatter = <TextInputFormatter>[
          FilteringTextInputFormatter.deny(RegExp(r'[0-9]'))
        ],
        assert(labelText != null),
        assert(inputAreaWidth != null),
        assert(inputAreaHeight != null),
        assert(textEditingController != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
        child: Container(
            width: inputAreaWidth,
            color: containerColor,
            margin: marginInputBox,
            height: inputAreaHeight,
            child: TextFormField(
                onTap: onTap as void Function()?,
                readOnly: readOnly,
                maxLines: maxLines,
                onChanged: onChanged,
                validator: validator,
                style: TextStyle(
                    color: fontColor,
                    fontFamily: 'Lato',
                    fontSize: fontSize * _sizeConfig!.getScaleDiagonal(context)),
                obscureText: obscureText,
                keyboardType: textInputType,
                inputFormatters: inputFormatter,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: fillColor,
                    labelText: labelText,
                    prefixIcon: prefixIcon,
                    suffixIcon: suffixIcon,
                    labelStyle: TextStyle(
                        color: fontColor,
                        fontFamily: 'Lato',
                        fontSize:
                            fontSize * _sizeConfig!.getScaleDiagonal(context)),
                    contentPadding: contentPadding,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: inputBorderColor),
                        borderRadius: BorderRadius.circular(borderRadius)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: inputBorderColor),
                        borderRadius: BorderRadius.circular(borderRadius))),
                controller: textEditingController,
                cursorColor: const Color(0xffA0CB53),
                obscuringCharacter: obscuringCharacter)));
  }
}
