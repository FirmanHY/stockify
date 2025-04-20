import 'package:flutter/material.dart';

class StickySearchBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  StickySearchBarDelegate({required this.child});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: child,
    );
  }

  @override
  double get maxExtent => 140.0;
  @override
  double get minExtent => 140.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
