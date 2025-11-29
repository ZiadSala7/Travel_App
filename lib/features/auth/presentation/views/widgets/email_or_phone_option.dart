import 'package:flutter/material.dart';

class EmailOrPhoneOption extends StatelessWidget {
  const EmailOrPhoneOption({
    super.key,
    required this.isEmailSelected,
    required this.title,
    required this.selectedClr,
    required this.nonSelectedClr,
  });

  final bool isEmailSelected;
  final String title;
  final Color selectedClr, nonSelectedClr;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: isEmailSelected ? selectedClr : nonSelectedClr,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          color: isEmailSelected ? Colors.white : Colors.black87,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
