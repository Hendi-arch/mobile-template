import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  final bool useFAB;
  final Widget? title;
  final Widget? child;
  final int itemCount;
  final Widget? drawer;
  final Widget? leading;
  final String captionFAB;
  final bool useStaticView;
  final List<Widget>? actions;
  final Function? onPressedFAB;
  final Widget Function(BuildContext context, int index)? itemBuilder;

  const BaseView.list(
      {Key? key,
      this.title,
      this.leading,
      this.actions,
      this.onPressedFAB,
      this.useFAB = false,
      this.captionFAB = '',
      this.drawer,
      required this.itemCount,
      required this.itemBuilder})
      : this.child = null,
        assert(itemBuilder != null),
        this.useStaticView = false,
        super(key: key);

  const BaseView.basic(
      {Key? key,
      this.title,
      this.leading,
      this.actions,
      this.onPressedFAB,
      this.useFAB = false,
      this.captionFAB = '',
      this.drawer,
      required Widget this.child})
      : this.itemCount = 0,
        this.itemBuilder = null,
        this.useStaticView = true,
        super(key: key);

  Widget _useFAB() {
    switch (useFAB) {
      case true:
        return FloatingActionButton.extended(
            onPressed: onPressedFAB as void Function()?,
            label: Text(captionFAB),
            backgroundColor: Colors.teal);

      default:
        return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Scaffold(
            drawer: drawer,
            appBar: AppBar(
                title: title,
                actions: actions,
                leading: leading,
                centerTitle: true,
                flexibleSpace: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: FractionalOffset.topLeft,
                            colors: [Colors.teal, Colors.green],
                            end: FractionalOffset.bottomRight)))),
            body: Stack(children: [
              // background
              Container(
                  decoration: const BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.teal, Colors.green]))),
              // body
              if (useStaticView) child!,

              if (!useStaticView)
                ListView.builder(
                    itemCount: itemCount,
                    itemBuilder: itemBuilder!,
                    physics: BouncingScrollPhysics())
            ]),
            floatingActionButton: _useFAB(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.endFloat),
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
        });
  }
}
