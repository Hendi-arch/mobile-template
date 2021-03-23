import 'package:flutter/material.dart';
import 'package:mobile_template/app/app.locator.dart';
import 'package:mobile_template/shared/size_config.dart';

import 'loading_widget.dart';

class OverlayLoadingWidget extends StatelessWidget {
  final SizeConfig? _sizeConfig = locator<SizeConfig>();

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity: 0.7,
        child: Container(
            color: Colors.black,
            alignment: Alignment.center,
            width: _sizeConfig!.getScreenWidth(context),
            height: _sizeConfig!.getScreenHeight(context),
            child: UnconstrainedBox(child: LoadingWidget(strokeWidth: 2.0))));
  }
}
