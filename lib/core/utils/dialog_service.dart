import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/theme/dimension.dart';

final dialogServiceProvider = Provider<DialogService>((ref) {
  return DialogService();
});

class DialogService {
  Future<T?> showAppDialog<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true,
  }) async {
    if (!context.mounted) return null;

    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: builder,
    );
  }

  Future<bool?> showConfirmationDialog({
    required BuildContext context,
    required String title,
    required String content,
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
    Color? confirmColor,
    IconData? confirmIcon,
  }) async {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return showAppDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(
              title,
              style: theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            content: Text(
              content,
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: Text(cancelText),
                  ),
                  const SizedBox(width: kLarge),
                  TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: Text(
                      confirmText,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: confirmColor ?? colors.error,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
    );
  }

  Future<void> showInfoDialog({
    required BuildContext context,
    required String title,
    required String content,
    String buttonText = 'OK',
  }) async {
    await showAppDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(buttonText),
              ),
            ],
          ),
    );
  }

  Future<T?> showCustomDialog<T>({
    required BuildContext context,
    required Widget content,
    String? title,
    List<Widget>? actions,
  }) async {
    return showAppDialog<T>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: title != null ? Text(title) : null,
            content: content,
            actions: actions,
          ),
    );
  }
}
