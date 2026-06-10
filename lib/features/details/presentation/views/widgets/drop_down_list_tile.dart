import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class DropDownListTile extends StatefulWidget {
  final Widget widget;
  final String title;

  const DropDownListTile({
    super.key,
    required this.widget,
    required this.title,
  });

  @override
  State<DropDownListTile> createState() => _DropDownListTileState();
}

class _DropDownListTileState extends State<DropDownListTile> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: scheme.outline.withValues(alpha: 0.14)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 4, 14, 14),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              borderRadius: BorderRadius.circular(14),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.title,
                        style: AppTextStyles.text20Bold.copyWith(
                          color: scheme.onSurface,
                        ),
                      ),
                    ),
                    AnimatedRotation(
                      turns: isClicked ? 0 : 0.5,
                      duration: const Duration(milliseconds: 180),
                      child: Icon(
                        Icons.keyboard_arrow_up_rounded,
                        color: scheme.onSurface.withValues(alpha: 0.72),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedCrossFade(
              firstChild: widget.widget,
              secondChild: const SizedBox(width: double.infinity),
              crossFadeState: isClicked
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 180),
              sizeCurve: Curves.easeOutCubic,
            ),
          ],
        ),
      ),
    );
  }
}
