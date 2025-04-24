import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/core/theme/dimension.dart';

class DateFilterBottomSheet extends StatefulWidget {
  final DateTime? initialStartDate;
  final DateTime? initialEndDate;
  final Function(DateTime?, DateTime?) onSubmit;

  const DateFilterBottomSheet({
    super.key,
    this.initialStartDate,
    this.initialEndDate,
    required this.onSubmit,
  });

  @override
  State<DateFilterBottomSheet> createState() => _DateFilterBottomSheetState();
}

class _DateFilterBottomSheetState extends State<DateFilterBottomSheet> {
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  void initState() {
    super.initState();
    _startDate = widget.initialStartDate;
    _endDate = widget.initialEndDate;
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
            'Pilih Rentang Tanggal',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: kSmall),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: _startDate ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null) {
                      setState(() {
                        _startDate = picked;
                      });
                    }
                  },
                  child: Text(
                    _startDate != null
                        ? DateFormat('dd/MM/yyyy').format(_startDate!)
                        : 'Tanggal Awal',
                    style: TextStyle(
                      color:
                          _startDate != null
                              ? AppColors.primaryColor
                              : Colors.grey,
                    ),
                  ),
                ),
              ),
              const Text(' - '),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: _endDate ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );
                    if (picked != null) {
                      setState(() {
                        _endDate = picked;
                      });
                    }
                  },
                  child: Text(
                    _endDate != null
                        ? DateFormat('dd/MM/yyyy').format(_endDate!)
                        : 'Tanggal Akhir',
                    style: TextStyle(
                      color:
                          _endDate != null
                              ? AppColors.primaryColor
                              : Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: kMedium),
          ElevatedButton(
            onPressed:
                (_startDate != null &&
                        _endDate != null &&
                        _startDate!.isBefore(_endDate!))
                    ? () {
                      widget.onSubmit(_startDate, _endDate);
                      Navigator.pop(context);
                    }
                    : null,
            style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
              minimumSize: WidgetStateProperty.all<Size>(
                const Size(double.infinity, 50),
              ),
            ),
            child: Text(
              'Terapkan',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          const SizedBox(height: kMedium),
        ],
      ),
    );
  }
}
