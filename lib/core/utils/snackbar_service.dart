import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/widgets/snackbars/custom_snackbar.dart';
import 'package:stockify/core/widgets/snackbars/snackbar_type.dart';

final snackBarServiceProvider = Provider<SnackBarService>((ref) {
  return SnackBarService();
});

class SnackBarService {
  void show({
    required BuildContext context,
    String message = '',
    required SnackBarType type,
    Duration duration = const Duration(seconds: 4),
    Color? backgroundColor,
    Color? textColor,
    IconData? icon,
  }) {
    final overlay = Overlay.of(context);

    final overlayEntry = OverlayEntry(
      builder:
          (context) => Positioned(
            top: MediaQuery.of(context).viewPadding.top + kMedium,
            left: kMedium,
            right: kMedium,
            child: Material(
              color: AppColors.transparentBg,
              child: CustomSnackBar(
                message: message,
                type: type,
                duration: duration,
                backgroundColor: backgroundColor,
                textColor: textColor,
                icon: icon,
              ),
            ),
          ),
    );

    overlay.insert(overlayEntry);

    Future.delayed(duration, () {
      overlayEntry.remove();
    });
  }

  void showSuccess(BuildContext context, [String message = 'Berhasil']) {
    show(context: context, message: message, type: SnackBarType.success);
  }

  void showError(BuildContext context, [String message = 'Terjadi kesalahan']) {
    show(context: context, message: message, type: SnackBarType.error);
  }

  void showInfo(BuildContext context, [String message = 'Info']) {
    show(context: context, message: message, type: SnackBarType.info);
  }
}
