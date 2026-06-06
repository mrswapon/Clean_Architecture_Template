import 'package:clean_architecture_template/l10n/app_localizations.dart';

import '../constants/bee_entry_fields.dart';

/// Short labels for entry list cards.
class BeeEntryDisplay {
  BeeEntryDisplay._();

  static String? summaryLine(
    Map<String, dynamic>? customFields,
    AppLocalizations l10n,
  ) {
    if (customFields == null || customFields.isEmpty) return null;

    final parts = <String>[];

    void add(String label, String key) {
      final v = customFields[key]?.toString();
      if (v == null || v.isEmpty) return;
      parts.add('$label: ${_label(v, l10n)}');
    }

    add(l10n.beeQueen, BeeEntryFields.queenPresent);
    add(l10n.beeEggs, BeeEntryFields.queenLayingEggs);
    add(l10n.beeMites, BeeEntryFields.mitesPresent);
    add(l10n.beeBrood, BeeEntryFields.sealedBrood);

    if (parts.isEmpty) return null;
    return parts.take(4).join(' · ');
  }

  static String _label(String value, AppLocalizations l10n) {
    switch (value) {
      case 'yes':
        return l10n.yes;
      case 'no':
        return l10n.no;
      case 'unknown':
        return l10n.unknownShort;
      case 'done':
        return l10n.done;
      case 'not_done':
        return l10n.notDone;
      case 'very_low':
        return l10n.low;
      case 'normal':
        return l10n.ok;
      case 'none':
        return l10n.none;
      default:
        return value;
    }
  }
}
