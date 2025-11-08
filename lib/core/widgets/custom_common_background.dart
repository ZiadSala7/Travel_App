import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CustomCommonBackground extends StatelessWidget {
  final Widget widget;
  const CustomCommonBackground({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        // decoration: boxDecorationMethod(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: widget,
        ),
      ),
    );
  }
}
