import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../core/viewmodels/startup/startup_view_model.dart';
import '../base_view.dart';
import 'local_widgets/body.dart';

class StartUpView extends StatelessWidget {

  @override
  Widget build(context) => ViewModelBuilder<StartUpViewModel>.nonReactive(
      viewModelBuilder: () => StartUpViewModel(),
      builder: (_, __, ___) => BaseView.basic(child: Body()),
      onModelReady: (viewModel) => viewModel.handleStartUpLogic(context));
}
