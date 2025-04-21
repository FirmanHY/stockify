import 'package:flutter/material.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';

class OptionBottomSheetWidget extends StatelessWidget {
  final Function() onEdit;
  final Function() onDelete;

  const OptionBottomSheetWidget({
    super.key,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kMedium),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: kExtraLarge,
              height: kXSmall,
              margin: const EdgeInsets.only(bottom: kMedium),
              decoration: BoxDecoration(
                color: AppColors.borderColor,
                borderRadius: BorderRadius.circular(kXSmall),
              ),
            ),
          ),
          Text(
            "Pilih tindakan yang akan dilakukan",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Divider(height: kLarge),
          _buildActionTile(
            context,
            icon: Icons.edit,
            color: AppColors.primaryColor,
            title: 'Edit',
            onTap: onEdit,
          ),
          const SizedBox(height: kSmall),
          _buildActionTile(
            context,
            icon: Icons.delete,
            color: Colors.redAccent,
            title: 'Hapus',
            onTap: onDelete,
          ),
          const SizedBox(height: kMedium),
        ],
      ),
    );
  }

  Widget _buildActionTile(
    BuildContext context, {
    required IconData icon,
    required Color color,
    required String title,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: kMedium,
          horizontal: kSmall,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color.withOpacity(0.1),
        ),
        child: Row(
          children: [
            Icon(icon, color: color, size: 28),
            const SizedBox(width: kMedium),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: color,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
