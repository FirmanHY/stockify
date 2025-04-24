import 'package:flutter/material.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';

class ReportButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;

  const ReportButton({
    super.key,
    this.onPressed,
    this.iconSize = kMedium,
    this.backgroundColor = AppColors.primaryColor,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.description_outlined, color: iconColor, size: iconSize),
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
