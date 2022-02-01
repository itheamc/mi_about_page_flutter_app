import 'package:flutter/cupertino.dart';

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width , 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}


class WaveClipper extends CustomClipper<Path> {
  
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.95, size.width/2, size.height * 0.85);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.7, size.width, size.height * 0.75);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}