import 'package:flutter/material.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';

class CreateMasterDataBottomSheet extends StatefulWidget {
  final String title;
  final String hintText;
  final int minLength;
  final String submitText;
  final String? initialValue;
  final Function(String) onSubmit;

  const CreateMasterDataBottomSheet({
    super.key,
    required this.title,
    required this.hintText,
    required this.minLength,
    required this.submitText,
    required this.onSubmit,

    this.initialValue,
  });

  @override
  State<CreateMasterDataBottomSheet> createState() =>
      _CreateMasterDataBottomSheetState();
}

class _CreateMasterDataBottomSheetState
    extends State<CreateMasterDataBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.initialValue ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: kMedium,
        right: kMedium,
        top: kMedium,
      ),
      child: Form(
        key: _formKey,
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
            Text(widget.title, style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: kSmall),
            TextFormField(
              controller: _nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nama tidak boleh kosong';
                }
                if (value.length < widget.minLength) {
                  return 'Nama minimal ${widget.minLength} karakter';
                }
                return null;
              },
            ),
            const SizedBox(height: kMedium),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  widget.onSubmit(_nameController.text);
                  Navigator.pop(context);
                }
              },
              style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                minimumSize: WidgetStateProperty.all<Size>(
                  const Size(double.infinity, 50),
                ),
              ),
              child: Text(
                widget.submitText,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            const SizedBox(height: kMedium),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
