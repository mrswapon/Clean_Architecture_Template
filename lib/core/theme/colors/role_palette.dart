import 'package:flutter/material.dart';

/// Role-specific accents (super admin, etc.).
abstract final class RolePalette {
  static const superAdmin = Color(0xFF4E342E);
  static const superAdminLight = Color(0xFF6D4C41);
  static const superAdminSurface = Color(0xFFEFEBE9);
  static const superAdminGradientStart = Color(0xFF5D4037);
  static const superAdminGradientEnd = Color(0xFF795548);

  static const accentPurple = Color(0xFF7B1FA2);
  static const accentPurpleSurface = Color(0xFFF3E5F5);

  static const badgeAmber = Color(0xFFFFB300);
  static const badgeAmberText = Color(0xFF4E342E);
}
