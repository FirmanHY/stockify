import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/utils/snackbar_service.dart';
import 'package:stockify/core/widgets/loading_overlay/loading_overlay.dart';
import 'package:stockify/features/item/presentation/controller/create_item_controller.dart';
import 'package:stockify/features/item/presentation/state/create_item_state.dart';
import 'package:stockify/features/item/presentation/ui/widget/item_form.dart';

class CreateItemScreen extends ConsumerStatefulWidget {
  const CreateItemScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateItemScreenState();
}

class _CreateItemScreenState extends ConsumerState<CreateItemScreen> {
  final _formKey = GlobalKey<FormState>();

  void _listener() {
    ref.listen<CreateItemState>(createItemControllerProvider, (prev, next) {
      if (!mounted) return;
      final snackBarService = ref.read(snackBarServiceProvider);
      if (next.errorCreating != null &&
          next.errorCreating!.isNotEmpty &&
          next.errorCreating != prev?.errorCreating) {
        snackBarService.showError(context, next.errorCreating!);
        ref.read(createItemControllerProvider.notifier).clearError();
      }
      if (next.errorGettingTypes != null &&
          next.errorGettingTypes!.isNotEmpty &&
          next.errorGettingTypes != prev?.errorGettingTypes) {
        snackBarService.showError(context, next.errorGettingTypes!);
        ref
            .read(createItemControllerProvider.notifier)
            .clearErrorGettingTypes();
      }
      if (next.errorGettingUnit != null &&
          next.errorGettingUnit!.isNotEmpty &&
          next.errorGettingUnit != prev?.errorGettingUnit) {
        snackBarService.showError(context, next.errorGettingUnit!);
        ref.read(createItemControllerProvider.notifier).clearErrorGettingUnit();
      }
      if (next.isCreating == false &&
          next.errorCreating == null &&
          prev?.isCreating == true) {
        snackBarService.showSuccess(context, 'Barang berhasil ditambahkan');
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _listener();
    final state = ref.watch(createItemControllerProvider);
    final controller = ref.read(createItemControllerProvider.notifier);

    if (state.isLoading && state.itemTypes.isEmpty) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Tambah Barang')),
      body: LoadingOverlay(
        isLoading: state.isCreating,
        message: 'Menambahkan barang...',
        child: Padding(
          padding: const EdgeInsets.all(kMedium),
          child: ItemFormWidget(
            formKey: _formKey,
            itemName: state.itemName,
            minimumStock: state.minimumStock,
            selectedItemType: state.selectedItemType,
            selectedUnit: state.selectedUnit,
            imageFile: state.imageFile,
            currentImageUrl: null, // No current image for create
            itemTypes: state.itemTypes,
            units: state.units,
            onItemNameChanged: controller.setItemName,
            onMinimumStockChanged: controller.setMinimumStock,
            onItemTypeChanged: controller.setSelectedItemType,
            onUnitChanged: controller.setSelectedUnit,
            onImageChanged: controller.setImageFile,
            onSubmit: () {
              if (_formKey.currentState?.validate() ?? false) {
                controller.createItem();
              }
            },
            submitText: 'Tambah Barang',
          ),
        ),
      ),
    );
  }
}
