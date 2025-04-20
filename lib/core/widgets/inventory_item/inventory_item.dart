import 'package:flutter/material.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';

class InventoryItem extends StatelessWidget {
  final String imageUrl;
  final String itemName;
  final String quantityLabel;
  final String categoryLabel;
  final int stock;
  final int minStock;
  final IconData? icon;
  final String? transactionDate;
  final VoidCallback? onPressedActionIcon;
  final VoidCallback? onTapTile;

  const InventoryItem({
    super.key,
    required this.imageUrl,
    required this.itemName,
    required this.quantityLabel,
    required this.categoryLabel,
    required this.stock,
    required this.minStock,
    this.icon,
    this.transactionDate,
    this.onPressedActionIcon,
    this.onTapTile,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: onTapTile,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(kMediumSmall),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImage(),
            const SizedBox(width: kMediumSmall),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          itemName,
                          style: textTheme.titleSmall,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      InkWell(
                        onTap: onPressedActionIcon,
                        child: Icon(
                          icon ?? Icons.more_horiz,
                          color: AppColors.bodyTextColor,
                          size: kLarge,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: kXSmall),

                  // Subtitle Area
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              quantityLabel,
                              style: textTheme.bodyMedium,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            const SizedBox(height: kXSmall),
                            transactionDate != null
                                ? Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month_outlined,
                                      size: kMediumSmall,
                                      color: AppColors.infoColor,
                                    ),
                                    const SizedBox(width: kXSmall),
                                    Text(
                                      transactionDate!,
                                      style: textTheme.bodySmall?.copyWith(
                                        color: AppColors.infoColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: kFontSizeXXXS,
                                      ),
                                    ),
                                  ],
                                )
                                : Text(
                                  categoryLabel,
                                  style: textTheme.bodyMedium,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: kMedium),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(height: kLarge),
                            Text(
                              "Stok : $stock",
                              style: textTheme.titleSmall?.copyWith(
                                color:
                                    stock <= minStock
                                        ? AppColors.dangerColor
                                        : AppColors.infoColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kSmall),
      child: Image.network(
        imageUrl,
        width: kDoubleExtraLarge,
        height: kDoubleExtraLarge,
        fit: BoxFit.fill,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: kDoubleExtraLarge,
            height: kDoubleExtraLarge,
            color: Theme.of(context).colorScheme.surface,
            child: Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
                value:
                    loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
              ),
            ),
          );
        },
        errorBuilder:
            (context, error, stackTrace) => Container(
              width: kDoubleExtraLarge,
              height: kDoubleExtraLarge,
              color: Theme.of(context).colorScheme.surface,
              child: Icon(
                Icons.image_not_supported,
                size: kExtraLarge,
                color: AppColors.borderColor,
              ),
            ),
      ),
    );
  }
}
