// lib/core/presentation/widgets/snackbars/custom_snackbar.dart
import 'package:flutter/material.dart';
import 'snackbar_type.dart';

class CustomSnackBar extends StatelessWidget {
  final String message;
  final SnackBarType type;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final Duration duration;

  const CustomSnackBar({
    super.key,
    required this.message,
    required this.type,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.duration = const Duration(seconds: 4),
  });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultStyles = _getDefaultStyles(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: backgroundColor ?? defaultStyles.backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon ?? defaultStyles.icon, color: defaultStyles.iconColor),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              message,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: textColor ?? defaultStyles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _SnackBarStyles _getDefaultStyles(BuildContext context) {
    final theme = Theme.of(context);

    switch (type) {
      case SnackBarType.success:
        return _SnackBarStyles(
          icon: Icons.check_circle_rounded,
          iconColor: theme.colorScheme.onPrimaryContainer,
          textColor: theme.colorScheme.onPrimaryContainer,
          backgroundColor: theme.colorScheme.primaryContainer,
        );
      case SnackBarType.error:
        return _SnackBarStyles(
          icon: Icons.error_rounded,
          iconColor: theme.colorScheme.onErrorContainer,
          textColor: theme.colorScheme.onErrorContainer,
          backgroundColor: theme.colorScheme.errorContainer,
        );
      case SnackBarType.info:
        return _SnackBarStyles(
          icon: Icons.info_rounded,
          iconColor: theme.colorScheme.onSecondaryContainer,
          textColor: theme.colorScheme.onSecondaryContainer,
          backgroundColor: theme.colorScheme.secondaryContainer,
        );
    }
  }
}

class _SnackBarStyles {
  final IconData icon;
  final Color iconColor;
  final Color textColor;
  final Color backgroundColor;

  _SnackBarStyles({
    required this.icon,
    required this.iconColor,
    required this.textColor,
    required this.backgroundColor,
  });
}
