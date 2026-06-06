import 'package:flutter/material.dart';
import 'honey_palette.dart';
import 'neutral_palette.dart';
import 'role_palette.dart';
import 'status_palette.dart';

/// Semantic app colors — use these in widgets (never hard-code hex in screens).
abstract final class AppColors {
  // ─── Primary (honey) ───────────────────────────────────────────────────
  static const primary = HoneyPalette.honey600;
  static const primaryLight = HoneyPalette.honey400;
  static const primaryDark = HoneyPalette.honey800;
  static const primarySurface = HoneyPalette.cream100;

  // ─── Secondary (wax / hive) ────────────────────────────────────────────
  static const secondary = HoneyPalette.waxBrown;
  static const secondaryLight = HoneyPalette.waxBrownLight;
  static const secondarySurface = HoneyPalette.waxBrownSurface;

  // ─── Status ──────────────────────────────────────────────────────────────
  static const good = StatusPalette.good;
  static const warning = StatusPalette.warning;
  static const critical = StatusPalette.critical;
  static const goodSurface = StatusPalette.goodSurface;
  static const warningSurface = StatusPalette.warningSurface;
  static const criticalSurface = StatusPalette.criticalSurface;

  // ─── Surfaces & borders ──────────────────────────────────────────────────
  static const background = HoneyPalette.cream50;
  static const surface = NeutralPalette.white;
  static const surfaceAlt = NeutralPalette.gray50;
  static const border = NeutralPalette.gray300;
  static const divider = NeutralPalette.gray200;

  // ─── Text ────────────────────────────────────────────────────────────────
  static const textPrimary = NeutralPalette.gray900;
  static const textSecondary = NeutralPalette.gray600;
  static const textHint = NeutralPalette.gray400;
  static const textOnPrimary = NeutralPalette.white;
  static const textOnPrimaryMuted = Color(0xE6FFFFFF);

  // ─── Utility ───────────────────────────────────────────────────────────────
  static const error = StatusPalette.error;
  static const success = StatusPalette.success;
  static const info = StatusPalette.info;
  static const white = NeutralPalette.white;
  static const black = NeutralPalette.black;
  static const transparent = Colors.transparent;

  // ─── Frozen account ──────────────────────────────────────────────────────
  static const frozen = Color(0xFF546E7A);
  static const frozenSurface = Color(0xFFECEFF1);
  static const frozenBorder = Color(0x4D546E7A);

  // ─── Roles ─────────────────────────────────────────────────────────────────
  static const superAdmin = RolePalette.superAdmin;
  static const superAdminLight = RolePalette.superAdminLight;
  static const superAdminSurface = RolePalette.superAdminSurface;
  static const superAdminGradientStart = RolePalette.superAdminGradientStart;
  static const superAdminGradientEnd = RolePalette.superAdminGradientEnd;
  static const accentPurple = RolePalette.accentPurple;
  static const badgeAmber = RolePalette.badgeAmber;
  static const badgeAmberText = RolePalette.badgeAmberText;

  // ─── Overlays & shadows ────────────────────────────────────────────────────
  static const cardShadow = Color(0x0A000000);
  static const elevatedShadow = Color(0x14000000);
  static const loginCardShadow = Color(0x0F000000);
  static const overlayScrim = Color(0x99000000);
  static const onPrimaryOverlay = Color(0x3DFFFFFF);

  /// User list / cards: role chip colors.
  static Color roleColor(String role) => switch (role) {
        'super_admin' => superAdmin,
        'admin' => primary,
        _ => textSecondary,
      };

  static Color roleSurfaceColor(String role) => switch (role) {
        'super_admin' => superAdminSurface,
        'admin' => primarySurface,
        _ => surfaceAlt,
      };
}
