import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PersistenHeader extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double mXExtent;
  final double mnXExtent;
  PersistenHeader( {required this.child, required this.mXExtent, required this.mnXExtent,});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      height: mXExtent,
      child: child,
    );
  }

  @override
  double get maxExtent => mXExtent;

  @override
  double get minExtent => mnXExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
