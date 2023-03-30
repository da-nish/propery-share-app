import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/core/theme/theme.dart';

class AppSwitcher<T> extends StatefulWidget {
  final AppSwitcherStyle _style;
  final Pair<T, String> leftOption;
  final Pair<T, String> rightOption;
  final String infoLeft;
  final String infoRight;
  final T value;
  final Function(T) optionCallback;

  AppSwitcher(this._style, this.leftOption, this.rightOption, this.value,
      this.optionCallback,
      {this.infoLeft = "", this.infoRight = ""});

  @override
  State<AppSwitcher> createState() => _AppSwitcherState<T>();
}

class _AppSwitcherState<T> extends State<AppSwitcher> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
          onTap: () {
            widget.optionCallback((widget.value == widget.leftOption.first)
                ? widget.rightOption.first
                : widget.leftOption.first);
          },
          child: Container(
            height: widget._style.height,
            width: widget._style.width,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget._style.height / 2)),
                color: widget._style.backgroundColor),
            child: Stack(
              children: [
                AnimatedPositioned(
                    duration: widget._style.animationDuration,
                    top: (widget._style.height - widget._style.trackHeight) / 2,
                    left: (widget.value == widget.leftOption.first)
                        ? (widget._style.height - widget._style.trackHeight) / 2
                        : (widget._style.width - widget._style.trackHeight) -
                            (widget._style.height - widget._style.trackHeight) /
                                2,
                    child: AnimatedContainer(
                        duration: widget._style.animationDuration,
                        width: widget._style.trackHeight,
                        height: widget._style.trackHeight,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(widget._style.trackHeight / 2)),
                            color: (widget.value == widget.leftOption.first)
                                ? widget._style.leftColor
                                : widget._style.rightColor)))
              ],
            ),
          )),
    );
  }
}

class AppSwitcherStyle {
  final double margins;
  final double height;
  final double trackHeight;
  final double width;
  final Color backgroundColor;
  final Duration animationDuration;
  final TextStyle captionTextStyle;
  final Color leftColor;
  final Color rightColor;
  final Color inactive;
  AppSwitcherStyle.fromThemeWithTradeTypesMakeup(ThemeData theme)
      : backgroundColor = AppColors.darkGrey,
        animationDuration = Dimens.durationS,
        margins = Dimens.grid16,
        height = Dimens.switchHeight + 10,
        width = Dimens.switchWidth + 20,
        trackHeight = Dimens.switchTrackHeight + 10,
        leftColor = AppColors.activeGreen,
        rightColor = AppColors.activeBlue,
        inactive = AppColors.grey,
        captionTextStyle = AppTextStyle.h3Bold(color: AppColors.textGrey);
}

class Pair<T, F> {
  final T first;
  final F second;

  Pair(this.first, this.second);
}

class Triple<T, F, K> {
  final T first;
  final F second;
  final K third;

  Triple(this.first, this.second, this.third);
}
