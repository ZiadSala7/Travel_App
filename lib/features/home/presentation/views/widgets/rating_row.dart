import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

Row ratingRow(int? rating) {
  rating = rating ?? 4;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: List.generate(
          rating,
          (index) =>
              const Icon(Icons.star, color: AppColors.airplane, size: 18),
        ),
      ),
      const Row(
        children: [
          Text("5.0", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 4),
          Text(
            "(120 Reviews)",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    ],
  );
}
