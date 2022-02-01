import 'package:flutter/cupertino.dart';

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width , 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
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


class RibbonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width * 0.02, 0.0);
    path.lineTo(size.width * 0.2, size.height/1.75);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}

class RibbonClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;

    var path = Path();
    path.moveTo(w * 0.10, h/2);
    path.lineTo(w * 0.25, h * 0.65);
    path.lineTo(w * 0.125, h * 0.82);
    path.quadraticBezierTo(w * 0.25, h * 0.67, w * 0.64, h * 0.81);
    path.quadraticBezierTo(w * 0.84, h * 0.8, w, h * 0.55);
    path.lineTo(w, h * 0.15);
    path.quadraticBezierTo(w * 0.86, h * 0.5, w * 0.6, h * 0.55);
    path.quadraticBezierTo(w * 0.30, h * 0.4, w * 0.10, h/2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}