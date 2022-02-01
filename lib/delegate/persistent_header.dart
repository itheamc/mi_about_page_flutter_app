import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class APersistentHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final progress = shrinkOffset/maxExtent;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      color: Color.lerp(Colors.transparent, Colors.black87, progress),
      child: Stack(
        children: [
          Positioned(
            top: 28.0,
            left: 5.0,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ),
          Align(
            alignment: Alignment.lerp(
                Alignment.bottomLeft,
                Alignment.bottomCenter,
                progress) ?? Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.lerp(
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 0.0),
                  progress) ?? const EdgeInsets.symmetric(vertical: 16.0, horizontal: 0.0),
              child: Text(
                "About phone",
                style: TextStyle.lerp(
                    GoogleFonts.aBeeZee().copyWith(
                        fontSize: 28.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    GoogleFonts.aBeeZee().copyWith(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    progress),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 160.0;

  @override
  double get minExtent => 80.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
