import 'package:flutter/material.dart';

Row ratingRow(int? rating) {
  rating = rating ?? 4;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: List.generate(
          rating,
          (index) => const Icon(Icons.star, color: Colors.amber, size: 18),
        ),
      ),
      Row(
        children: [
          const Text("5.0", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(width: 4),
          const Text(
            "(120 Reviews)",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    ],
  );
}
