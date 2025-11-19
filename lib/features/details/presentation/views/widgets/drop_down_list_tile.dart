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
    return InkWell(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Column(
        spacing: 10,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(widget.title, style: AppTextStyles.text22Bold),
            trailing: Icon(
              !isClicked ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
            ),
          ),
          isClicked ? widget.widget :const SizedBox(),
        ],
      ),
    );
  }
}
