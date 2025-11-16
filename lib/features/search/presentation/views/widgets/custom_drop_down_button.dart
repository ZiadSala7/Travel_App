import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomDropDownButton extends StatefulWidget {
  final List<String> items;
  final String hint;
  final Function(String selectedClass) onSelected;
  const CustomDropDownButton({
    super.key,
    required this.items,
    required this.hint,
    required this.onSelected,
  });

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.fillClr,
        border: Border.all(color: AppColors.paleGray),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          style: TextStyle(color: AppColors.darkGray),
          value: selectedValue,
          hint: Text(
            widget.hint,
            style: TextStyle(color: AppColors.mediumGray),
          ),
          icon: const Icon(Icons.arrow_drop_down),
          items: widget.items.map((item) {
            return DropdownMenuItem(value: item, child: Text(item));
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedValue = value;
              widget.onSelected(value!);
            });
          },
        ),
      ),
    );
  }
}
