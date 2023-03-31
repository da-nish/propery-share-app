import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/components/expanded_tile/app_expandable_style.dart';
import 'package:flutter_app/app/core/theme/theme.dart';

class AppExpandable extends StatefulWidget {
  final Widget title;
  final List<Widget> children;
  final bool initiallyExpanded;
  final AppExpandableStyle style;
  final bool hideTrailing;
  final Function(bool)? onChange;
  final Color background;
  final Color collapseBackground;
  final Widget? trailer;

  const AppExpandable(
      {required this.style,
      required this.title,
      required this.children,
      this.initiallyExpanded = false,
      this.hideTrailing = false,
      this.onChange,
      this.background = AppColors.transparent,
      this.collapseBackground = AppColors.transparent,
      this.trailer,
      Key? key})
      : super(key: key);

  @override
  AppExpandableState createState() => AppExpandableState();
}

class AppExpandableState extends State<AppExpandable> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      // textColor: AppColors.dark,
      backgroundColor: widget.background,
      collapsedBackgroundColor: widget.collapseBackground,
      childrenPadding: const EdgeInsets.all(0),
      tilePadding: const EdgeInsets.all(0.0),
      // iconColor: AppColors.liteGreyText,
      // collapsedIconColor: AppColors.liteGreyText,
      initiallyExpanded: widget.initiallyExpanded,
      title: widget.title,
      trailing: const SizedBox(),
      onExpansionChanged: (value) {
        if (widget.onChange != null) widget.onChange!.call(value);
      },
      children: widget.children,
    );
  }
}
