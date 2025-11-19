import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  const FavouriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: Colors.white.withOpacity(0.8),
          shape: BoxShape.circle,
        ),
        child: FittedBox(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border, size: 20),
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
