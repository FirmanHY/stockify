// lib/features/item/presentation/ui/widget/item_form.dart
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/features/master_data/data/dto/response/item_type_response.dart';
import 'package:stockify/features/master_data/data/dto/response/unit_response.dart';

class ItemFormWidget extends ConsumerWidget {
  final GlobalKey<FormState> formKey;
  final String itemName;
  final int minimumStock;
  final ItemTypeResponse? selectedItemType;
  final UnitResponse? selectedUnit;
  final File? imageFile;
  final String? currentImageUrl;
  final List<ItemTypeResponse> itemTypes;
  final List<UnitResponse> units;
  final Function(String) onItemNameChanged;
  final Function(int) onMinimumStockChanged;
  final Function(ItemTypeResponse?) onItemTypeChanged;
  final Function(UnitResponse?) onUnitChanged;
  final Function(File?) onImageChanged;
  final VoidCallback onSubmit;
  final String submitText;

  const ItemFormWidget({
    required this.formKey,
    required this.itemName,
    required this.minimumStock,
    required this.selectedItemType,
    required this.selectedUnit,
    required this.imageFile,
    required this.currentImageUrl,
    required this.itemTypes,
    required this.units,
    required this.onItemNameChanged,
    required this.onMinimumStockChanged,
    required this.onItemTypeChanged,
    required this.onUnitChanged,
    required this.onImageChanged,
    required this.onSubmit,
    required this.submitText,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: formKey,
      child: ListView(
        children: [
          const SizedBox(height: kMedium),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Nama Barang'),
            initialValue: itemName,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Nama barang wajib diisi';
              }
              return null;
            },
            onChanged: onItemNameChanged,
          ),
          const SizedBox(height: kMedium),
          DropdownButtonFormField<ItemTypeResponse>(
            decoration: const InputDecoration(labelText: 'Tipe Barang'),
            value: selectedItemType,
            items:
                itemTypes
                    .map(
                      (type) => DropdownMenuItem(
                        value: type,
                        child: Text(type.typeName),
                      ),
                    )
                    .toList(),
            onChanged: onItemTypeChanged,
            validator: (value) {
              if (value == null) {
                return 'Tipe barang wajib dipilih';
              }
              return null;
            },
          ),
          const SizedBox(height: kMedium),
          DropdownButtonFormField<UnitResponse>(
            decoration: const InputDecoration(labelText: 'Satuan'),
            value: selectedUnit,
            items:
                units
                    .map(
                      (unit) => DropdownMenuItem(
                        value: unit,
                        child: Text(unit.unitName),
                      ),
                    )
                    .toList(),
            onChanged: onUnitChanged,
            validator: (value) {
              if (value == null) {
                return 'Satuan wajib dipilih';
              }
              return null;
            },
          ),
          const SizedBox(height: kMedium),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Stok Minimum'),
            keyboardType: TextInputType.number,
            initialValue: minimumStock.toString(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Stok minimum wajib diisi';
              }
              final intValue = int.tryParse(value);
              if (intValue == null || intValue < 0) {
                return 'Stok minimum harus bilangan bulat positif';
              }
              return null;
            },
            onChanged:
                (value) => onMinimumStockChanged(int.tryParse(value) ?? 0),
          ),
          const SizedBox(height: kMedium),
          GestureDetector(
            onTap: () async {
              final result = await FilePicker.platform.pickFiles(
                type: FileType.image,
              );
              if (result != null && result.files.isNotEmpty) {
                onImageChanged(File(result.files.single.path!));
              }
            },
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kSmall),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                ),
              ),
              child: Container(
                height: 150,
                width: double.infinity,
                alignment: Alignment.center,
                child:
                    imageFile != null
                        ? ClipRRect(
                          borderRadius: BorderRadius.circular(kSmall),
                          child: Image.file(
                            imageFile!,
                            fit: BoxFit.contain,
                            height: 150,
                            width: double.infinity,
                          ),
                        )
                        : currentImageUrl != null
                        ? ClipRRect(
                          borderRadius: BorderRadius.circular(kSmall),
                          child: Image.network(
                            currentImageUrl!,
                            fit: BoxFit.contain,
                            height: 150,
                            width: double.infinity,
                          ),
                        )
                        : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 40,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            const SizedBox(height: kSmall),
                            Text(
                              'Pilih Gambar',
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
              ),
            ),
          ),
          if (imageFile != null || currentImageUrl != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kSmall),
              child: Text(
                imageFile != null
                    ? 'Gambar: ${imageFile!.path.split('/').last}'
                    : 'Gambar saat ini',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          const SizedBox(height: kMedium),
          ElevatedButton(onPressed: onSubmit, child: Text(submitText)),
        ],
      ),
    );
  }
}
