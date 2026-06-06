import 'package:flutter/material.dart';
import 'package:clean_architecture_template/l10n/app_localizations.dart';

extension L10nX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

/// Localized labels for role/status filter and display values.
extension LocaleLabelX on String {
  String localizedOption(AppLocalizations l10n) => switch (this) {
        'all' => l10n.filterAll,
        'active' => l10n.filterActive,
        'frozen' => l10n.frozen,
        'super_admin' => l10n.roleSuperAdmin,
        'admin' => l10n.roleAdmin,
        'user' => l10n.roleUser,
        'inactive' => l10n.inactive,
        _ => this,
      };
}
