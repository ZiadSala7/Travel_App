import 'package:flutter/material.dart';

class CustomImageNetwork extends StatelessWidget {
  final String path;
  const CustomImageNetwork({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Image.network(
        path,
        height: 160,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
