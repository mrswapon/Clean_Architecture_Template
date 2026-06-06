import 'package:flutter/material.dart';
import 'package:clean_architecture_template/l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import '../theme/app_colors.dart';

extension StringX on String {
  String get capitalize =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';

  String get titleCase => split(' ').map((w) => w.capitalize).join(' ');

  String toDisplayDate() {
    try {
      final dt = DateTime.parse(this);
      return DateFormat('dd MMM yyyy').format(dt);
    } catch (_) {
      return this;
    }
  }

  String toDisplayDateTime() {
    try {
      final dt = DateTime.parse(this);
      return DateFormat('dd MMM yyyy • HH:mm').format(dt);
    } catch (_) {
      return this;
    }
  }
}

extension ContextX on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colors => Theme.of(this).colorScheme;
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;

  void showSnackBar(String message, {bool isError = false}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? AppColors.error : AppColors.success,
      ),
    );
  }
}

extension TimeOfDayX on TimeOfDay {
  /// API format: `H:i:s` (e.g. `09:26:00`)
  String toApiTimeString() {
    return '${hour.toString().padLeft(2, '0')}:'
        '${minute.toString().padLeft(2, '0')}:00';
  }
}

extension ColorX on Color {
  Color get tint10 => withValues(alpha: 0.1);
  Color get tint20 => withValues(alpha: 0.2);
  Color get softBorder => withValues(alpha: 0.3);
  Color get mutedOnPrimary => withValues(alpha: 0.8);
  Color get faintOnPrimary => withValues(alpha: 0.7);
}

extension ConditionStatusX on String {
  Color get statusColor => switch (this) {
    'good'     => AppColors.good,
    'warning'  => AppColors.warning,
    'critical' => AppColors.critical,
    _          => AppColors.textSecondary,
  };

  Color get statusSurface => switch (this) {
    'good'     => AppColors.goodSurface,
    'warning'  => AppColors.warningSurface,
    'critical' => AppColors.criticalSurface,
    _          => AppColors.surfaceAlt,
  };

  String statusLabel(AppLocalizations l10n) => switch (this) {
        'good' => l10n.healthy,
        'warning' => l10n.warning,
        'critical' => l10n.critical,
        'active' => l10n.active,
        'inactive' => l10n.inactive,
        _ => toUpperCase(),
      };
}
