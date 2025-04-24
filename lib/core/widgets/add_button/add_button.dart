import 'package:flutter/material.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';

class AddButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;

  const AddButton({
    super.key,
    this.onPressed,
    this.iconSize = kMedium,
    this.backgroundColor = AppColors.primaryColor,
    this.iconColor = AppColors.whiteColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.add_outlined, color: iconColor, size: iconSize),
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.all(kXSmall),
        shape: const CircleBorder(),
        minimumSize: const Size(kExtraLarge, kExtraLarge),
      ),
      onPressed: onPressed,
    );
  }
}
