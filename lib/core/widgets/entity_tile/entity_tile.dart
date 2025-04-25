import 'package:flutter/material.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';

class EntityTile extends StatelessWidget {
  final String title;
  final IconData? leadingIcon;
  final VoidCallback? onTap;
  final VoidCallback? onPressedActionIcon;
  final IconData? actionIcon;

  const EntityTile({
    super.key,
    required this.title,
    this.leadingIcon,
    this.onTap,
    this.onPressedActionIcon,
    this.actionIcon,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(kMediumSmall),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kMediumSmall,
          vertical: kSmall,
        ),
        child: Row(
          children: [
            Icon(
              leadingIcon ?? Icons.label_important_outline,
              size: kExtraLarge,
              color: AppColors.primaryColor,
            ),
            const SizedBox(width: kMediumSmall),
            Expanded(
              child: Text(
                title,
                style: textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (onPressedActionIcon != null)
              InkWell(
                onTap: onPressedActionIcon,
                borderRadius: BorderRadius.circular(20),
                child: Icon(
                  actionIcon ?? Icons.more_vert,
                  size: kLarge,
                  color: AppColors.bodyTextColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
