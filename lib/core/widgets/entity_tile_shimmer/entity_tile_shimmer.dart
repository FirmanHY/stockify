import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stockify/core/theme/dimension.dart';

class EntityTileShimmer extends StatelessWidget {
  const EntityTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kMediumSmall,
          vertical: kSmall,
        ),
        child: Row(
          children: [
            // Icon shimmer
            Container(
              width: kExtraLarge,
              height: kExtraLarge,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(width: kMediumSmall),
            // Title shimmer
            Expanded(
              child: Container(
                height: 18,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(width: kMediumSmall),
            // Action icon shimmer
            Container(
              width: kLarge,
              height: kLarge,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
