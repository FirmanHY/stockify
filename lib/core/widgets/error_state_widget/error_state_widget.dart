import 'package:flutter/material.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';

class ErrorStateWidget extends StatelessWidget {
  final String title;
  final String message;
  final IconData icon;
  final String? buttonText;
  final VoidCallback? onRetry;

  const ErrorStateWidget({
    super.key,
    this.title = 'Terjadi Kesalahan',
    this.message = 'Kami tidak dapat memuat data. Silakan coba lagi nanti.',
    this.icon = Icons.error_outline,
    this.buttonText,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(kLarge),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: kDoubleExtraLarge + kMedium,
              color: AppColors.dangerColor,
            ),
            const SizedBox(height: kMedium),
            Text(
              title,
              style: textTheme.titleMedium?.copyWith(
                color: AppColors.dangerColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: kSmall),
            Text(
              message,
              style: textTheme.bodyMedium?.copyWith(
                color: AppColors.bodyTextColor,
              ),
              textAlign: TextAlign.center,
            ),
            if (buttonText != null && onRetry != null) ...[
              const SizedBox(height: kLarge),
              ElevatedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh, color: Colors.white),
                label: Text(buttonText!),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.dangerColor,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
