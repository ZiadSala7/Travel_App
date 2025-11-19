import 'package:flutter/material.dart';

import 'bottom_rounded_clipper.dart';

class ImageDetailsSection extends StatelessWidget {
  final String image;
  const ImageDetailsSection({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomRoundedClipper(),
      child: Container(
        height: MediaQuery.sizeOf(context).height / 2.5,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 35,
              left: 0,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
