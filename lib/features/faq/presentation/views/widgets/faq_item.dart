import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

/// 🔽 Expandable FAQ item
class ExpandableFAQItem extends StatefulWidget {
  final String question;
  final String answer;

  const ExpandableFAQItem({super.key, required this.question, required this.answer});

  @override
  State<ExpandableFAQItem> createState() => ExpandableFAQItemState();
}

class ExpandableFAQItemState extends State<ExpandableFAQItem> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.greyShade),
      ),
      child: ExpansionTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(14),
          side: const BorderSide(width: 0.3),
        ),
        title: Text(
          widget.question,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        trailing: Icon(
          expanded ? Icons.remove : Icons.add,
          color: AppColors.deepOrange,
        ),
        onExpansionChanged: (val) {
          setState(() => expanded = val);
        },
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              widget.answer,
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ),
        ],
      ),
    );
  }
}
