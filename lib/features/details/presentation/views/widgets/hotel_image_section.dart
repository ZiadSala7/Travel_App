import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import 'bottom_rounded_clipper.dart';

class HotelImageSection extends StatelessWidget {
  const HotelImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomRoundedClipper(),
      child: Container(
        height: MediaQuery.sizeOf(context).height / 2.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageNetwork),
            fit: BoxFit.fill,
          ),
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
                icon: Icon(Icons.arrow_back),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
