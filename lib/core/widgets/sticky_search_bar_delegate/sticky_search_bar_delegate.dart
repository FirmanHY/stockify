import 'package:flutter/material.dart';

class StickySearchBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  StickySearchBarDelegate({required this.child, required this.height});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SizedBox(height: height, child: child),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant StickySearchBarDelegate oldDelegate) =>
      oldDelegate.height != height || oldDelegate.child != child;
}
