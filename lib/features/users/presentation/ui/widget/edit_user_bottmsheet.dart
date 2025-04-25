import 'package:flutter/material.dart';
import 'package:stockify/core/theme/dimension.dart';
import 'package:stockify/core/theme/colors.dart';
import 'package:stockify/features/users/data/dto/request/update_user_request.dart';
import 'package:stockify/features/users/data/dto/response/user_response.dart';

class EditUserBottomSheet extends StatefulWidget {
  final UserResponse initialUser;
  final Function(UpdateUserRequest) onSubmit;

  const EditUserBottomSheet({
    required this.initialUser,
    required this.onSubmit,
  });

  @override
  State<EditUserBottomSheet> createState() => _EditUserBottomSheetState();
}

class _EditUserBottomSheetState extends State<EditUserBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _fullNameController = TextEditingController();
  String? _selectedRole;

  final List<String> roles = ['admin', 'warehouse_admin', 'warehouse_manager'];

  @override
  void initState() {
    super.initState();
    _usernameController.text = widget.initialUser.username;
    _fullNameController.text = widget.initialUser.fullName;
    _selectedRole = widget.initialUser.role;
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _fullNameController.dispose();
    super.dispose();
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
        child: SingleChildScrollView(
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
              Text("Edit User", style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: kSmall),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value != null && value.isNotEmpty && value.length < 5) {
                    return 'Username minimal 5 karakter';
                  }
                  return null;
                },
              ),
              const SizedBox(height: kSmall),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password (opsional)',
                ),
                obscureText: true,
                validator: (value) {
                  if (value != null && value.isNotEmpty && value.length < 8) {
                    return 'Password minimal 8 karakter';
                  }
                  return null;
                },
              ),
              const SizedBox(height: kSmall),
              TextFormField(
                controller: _fullNameController,
                decoration: const InputDecoration(labelText: 'Nama Lengkap'),
              ),
              const SizedBox(height: kSmall),
              DropdownButtonFormField<String>(
                value: _selectedRole,
                decoration: const InputDecoration(labelText: 'Role'),
                items:
                    roles.map((role) {
                      return DropdownMenuItem<String>(
                        value: role,
                        child: Text(role),
                      );
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedRole = value;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Role harus dipilih';
                  }
                  return null;
                },
              ),
              const SizedBox(height: kMedium),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    final request = UpdateUserRequest(
                      username:
                          _usernameController.text !=
                                  widget.initialUser.username
                              ? _usernameController.text
                              : null,
                      password:
                          _passwordController.text.isNotEmpty
                              ? _passwordController.text
                              : null,
                      fullName:
                          _fullNameController.text !=
                                  widget.initialUser.fullName
                              ? _fullNameController.text
                              : null,
                      role:
                          _selectedRole != widget.initialUser.role
                              ? _selectedRole
                              : null,
                    );
                    widget.onSubmit(request);
                    Navigator.pop(context);
                  }
                },
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                  minimumSize: WidgetStateProperty.all<Size>(
                    const Size(double.infinity, 50),
                  ),
                ),
                child: Text(
                  "Simpan",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              const SizedBox(height: kMedium),
            ],
          ),
        ),
      ),
    );
  }
}
