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
      builder:
          (context) => Dialog(
            backgroundColor: Theme.of(context).colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kMedium),
            ),
          ),
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
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: Text(cancelText),
              ),
              FilledButton.icon(
                onPressed: () => Navigator.pop(context, true),
                style: FilledButton.styleFrom(
                  backgroundColor: confirmColor ?? colors.error,
                ),
                icon: Icon(confirmIcon ?? Icons.delete),
                label: Text(confirmText),
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
