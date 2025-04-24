// lib/features/item/presentation/ui/edit_item_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/utils/snackbar_service.dart';
import 'package:stockify/core/widgets/loading_overlay/loading_overlay.dart';
import 'package:stockify/features/item/presentation/controller/edit_item_controller.dart';
import 'package:stockify/features/item/presentation/state/edit_item_state.dart';
import 'package:stockify/features/item/presentation/ui/widget/item_form.dart';

class EditItemScreen extends ConsumerStatefulWidget {
  final String itemId;
  const EditItemScreen({required this.itemId, super.key});

  @override
  ConsumerState<EditItemScreen> createState() => _EditItemScreenState();
}

class _EditItemScreenState extends ConsumerState<EditItemScreen> {
  final _formKey = GlobalKey<FormState>();

  void _listener() {
    ref.listen<EditItemState>(editItemControllerProvider(widget.itemId), (
      prev,
      next,
    ) {
      if (!mounted) return;
      final snackBarService = ref.read(snackBarServiceProvider);
      if (next.errorLoading != null &&
          next.errorLoading != prev?.errorLoading) {
        snackBarService.showError(context, next.errorLoading!);
      }
      if (next.errorUpdating != null &&
          next.errorUpdating != prev?.errorUpdating) {
        snackBarService.showError(context, next.errorUpdating!);
      }
      if (next.isUpdating == false &&
          next.errorUpdating == null &&
          prev?.isUpdating == true) {
        snackBarService.showSuccess(context, 'Barang berhasil diupdate');
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _listener();
    final state = ref.watch(editItemControllerProvider(widget.itemId));
    final controller = ref.read(
      editItemControllerProvider(widget.itemId).notifier,
    );

    if (state.isLoading || state.item == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Barang')),
      body: LoadingOverlay(
        isLoading: state.isUpdating,
        message: 'Mengupdate barang...',
        child: Padding(
          padding: const EdgeInsets.all(kMedium),
          child: ItemFormWidget(
            formKey: _formKey,
            itemName: state.itemName ?? state.item!.itemName,
            minimumStock: state.minimumStock ?? state.item!.minimumStock,
            selectedItemType:
                state.selectedItemType ??
                state.itemTypes.firstWhere(
                  (type) => type.typeId == state.item!.typeId,
                ),
            selectedUnit:
                state.selectedUnit ??
                state.units.firstWhere(
                  (unit) => unit.unitId == state.item!.unitId,
                ),
            imageFile: state.imageFile,
            currentImageUrl: state.currentImageUrl,
            itemTypes: state.itemTypes,
            units: state.units,
            onItemNameChanged: controller.setItemName,
            onMinimumStockChanged: controller.setMinimumStock,
            onItemTypeChanged: controller.setSelectedItemType,
            onUnitChanged: controller.setSelectedUnit,
            onImageChanged: controller.setImageFile,
            onSubmit: () {
              if (_formKey.currentState?.validate() ?? false) {
                controller.updateItem(widget.itemId);
              }
            },
            submitText: 'Update Barang',
          ),
        ),
      ),
    );
  }
}
