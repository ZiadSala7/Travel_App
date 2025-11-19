import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class DialogTravellersListTile extends StatefulWidget {
  final int range;
  final String title;
  final String? desc;
  final Function(int cnt) onChange;
  const DialogTravellersListTile({
    super.key,
    required this.range,
    required this.title,
    required this.onChange,
    this.desc,
  });

  @override
  State<DialogTravellersListTile> createState() =>
      _DialogTravellersListTileState();
}

class _DialogTravellersListTileState extends State<DialogTravellersListTile> {
  late int cnt;
  @override
  void initState() {
    cnt = widget.range;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title, style: AppTextStyles.text18Reg),
              if (widget.desc != null)
                Text(
                  widget.desc!,
                  style: AppTextStyles.text16Reg.copyWith(
                    fontSize: 14,
                    color: AppColors.mediumGray,
                  ),
                ),
            ],
          ),
          Row(
            spacing: 10,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    cnt++;
                    widget.onChange(cnt);
                  });
                },
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColors.airplane,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.add, color: AppColors.white),
                ),
              ),
              Text(
                cnt.toString().padLeft(2, "0"),
                style: AppTextStyles.text16Reg,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    cnt > widget.range ? cnt-- : cnt;
                    widget.onChange(cnt);
                  });
                },
                icon: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColors.airplane,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.remove, color: AppColors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
