import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';

class InventoryItemShimmer extends StatelessWidget {
  const InventoryItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kMediumSmall),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildShimmerBox(
            width: kDoubleExtraLarge,
            height: kDoubleExtraLarge,
            borderRadius: kSmall,
          ),
          const SizedBox(width: kMediumSmall),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title Row shimmer
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildShimmerBox(
                      width: kDoubleExtraLarge + kDoubleExtraLarge,
                      height: kMediumSmall,
                      borderRadius: kXSmall,
                    ),
                    _buildShimmerCircle(size: kLarge),
                  ],
                ),
                const SizedBox(height: kXSmall),

                _buildShimmerBox(
                  width: kDoubleExtraLarge + kExtraLarge,
                  height: kMediumSmall,
                  borderRadius: kXSmall,
                ),
                const SizedBox(height: kSmall),
                _buildShimmerBox(
                  width: kDoubleExtraLarge + kExtraLarge,
                  height: kMediumSmall,
                  borderRadius: kXSmall,
                ),

                const SizedBox(height: kSmall),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShimmerBox({
    required double width,
    required double height,
    double borderRadius = 8,
  }) {
    return Shimmer.fromColors(
      baseColor: AppColors.borderColor.withOpacity(0.3),
      highlightColor: AppColors.borderColor.withOpacity(0.1),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }

  Widget _buildShimmerCircle({required double size}) {
    return Shimmer.fromColors(
      baseColor: AppColors.borderColor.withOpacity(0.3),
      highlightColor: AppColors.borderColor.withOpacity(0.1),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      ),
    );
  }
}
