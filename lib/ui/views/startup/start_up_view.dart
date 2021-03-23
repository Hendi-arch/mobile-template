import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:stacked/stacked.dart';

import '../../../core/viewmodels/startup/startup_view_model.dart';
import '../base_view.dart';
import 'local_widgets/body.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(_) => ViewModelBuilder<StartUpViewModel>.nonReactive(
      viewModelBuilder: () => StartUpViewModel(), builder: (_, __, ___) => BaseView.basic(child: Body()));
}
