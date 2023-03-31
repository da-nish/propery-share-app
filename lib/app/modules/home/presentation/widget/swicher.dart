import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/modules/home/presentation/home_screen.dart';

class AppSwitcher<InvestType> extends StatefulWidget {
  final InvestType value;
  const AppSwitcher(this.value, {super.key});

  @override
  State<AppSwitcher> createState() => _AppSwitcherState();
}

class _AppSwitcherState extends State<AppSwitcher> {
  InvestType? current;

  @override
  void initState() {
    super.initState();
    current = widget.value;
  }

  void toggle() {
    if (current == InvestType.direct) {
      current = InvestType.fund;
    } else {
      current = InvestType.direct;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Direct"),
        const SizedBox(width: 8),
        SizedBox(
          // height: 20,
          width: 40,
          child: AnimatedToggleSwitch<InvestType>.rolling(
            current: current!,
            height: 20,
            values: const [InvestType.fund, InvestType.direct],
            indicatorSize: const Size(26.0, 20),
            onChanged: (i) {
              setState(() {
                current = i;
              });
            },
            onTap: () => toggle(),
            iconBuilder: (size, bb, __) {
              return const SizedBox();
              // return Icon(Icons.circle, color: AppColors.activeBlue);
            },
          ),
        ),
        const SizedBox(width: 8),
        const Text("Fund"),
      ],
    );
  }
}
