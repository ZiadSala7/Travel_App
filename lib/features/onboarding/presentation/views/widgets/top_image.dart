import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class TopImage extends StatelessWidget {
  final String image;
  const TopImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomCurveClipper(),
      child: Container(
        height: MediaQuery.sizeOf(context).height / 1.8,

        decoration: BoxDecoration(
          color: AppColors.paleGray,
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
        ),
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 80,
    );
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
