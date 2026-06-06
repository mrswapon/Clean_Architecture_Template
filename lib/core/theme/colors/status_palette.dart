import 'package:flutter/material.dart';

abstract final class StatusPalette {
  static const good = Color(0xFF2E7D32);
  static const goodSurface = Color(0xFFE8F5E9);

  static const warning = Color(0xFFE65100);
  static const warningSurface = Color(0xFFFFF3E0);

  static const critical = Color(0xFFC62828);
  static const criticalSurface = Color(0xFFFFEBEE);

  static const error = Color(0xFFD32F2F);
  static const success = Color(0xFF388E3C);
  static const info = Color(0xFF1565C0);
}
