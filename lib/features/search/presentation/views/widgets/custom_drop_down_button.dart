import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomDropDownButton extends StatefulWidget {
  final List<String> items;
  const CustomDropDownButton({super.key, required this.items});

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
          value: selectedValue,
          hint: const Text("Select your car"),
          icon: const Icon(Icons.arrow_drop_down),
          items: widget.items.map((item) {
            return DropdownMenuItem(value: item, child: Text(item));
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ),
    );
  }
}
