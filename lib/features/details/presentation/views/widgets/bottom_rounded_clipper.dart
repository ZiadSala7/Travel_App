import 'package:flutter/material.dart';

class BottomRoundedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 40; // مقدار الانحناء (يمكن تغييره)

    Path path = Path();

    // ----- أعلى الصورة -----
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);

    // ----- جانب يمين -----
    path.lineTo(size.width, size.height - radius);

    // ----- منحنى الزاوية اليمنى السفلية -----
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - radius,
      size.height,
    );

    // ----- خط سفلي -----
    path.lineTo(radius, size.height);

    // ----- منحنى الزاوية اليسرى السفلية -----
    path.quadraticBezierTo(0, size.height, 0, size.height - radius);

    // ----- إغلاق المسار -----
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
