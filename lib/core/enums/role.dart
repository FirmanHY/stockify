import 'package:stockify/core/constants/role_constants.dart';

enum Role {
  admin,
  warehouseAdmin,
  warehouseManager,
  unknown;

  static Role fromString(String value) {
    switch (value.toLowerCase()) {
      case RoleConstants.admin:
        return Role.admin;
      case RoleConstants.warehouseAdmin:
        return Role.warehouseAdmin;
      case RoleConstants.warehouseManager:
        return Role.warehouseManager;
      default:
        return Role.unknown;
    }
  }
}
