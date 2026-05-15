import 'package:flutter/material.dart';

class CustomGradientContainer extends StatelessWidget {
  final Widget child;
  final List<Color> colors;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? borderRadius;
  final Alignment? begin;
  final Alignment? end;
  final VoidCallback? onTap;

  const CustomGradientContainer({
    super.key,
    required this.child,
    required this.colors,
    this.padding,
    this.margin,
    this.borderRadius,
    this.begin,
    this.end,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: begin ?? Alignment.topLeft,
            end: end ?? Alignment.bottomRight,
            colors: colors,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
        ),
        child: child,
      ),
    );
  }
}