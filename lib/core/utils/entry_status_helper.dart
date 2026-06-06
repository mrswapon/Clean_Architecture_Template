/// Derives API status fields from hive inspection answers.
class EntryStatusHelper {
  EntryStatusHelper._();

  static ({String conditionStatus, bool issueFound, bool maintenanceRequired})
      fromBeeFields({
    String? queenPresent,
    String? queenLayingEggs,
    String? queenMated,
    String? mitesPresent,
    String? queenCells,
    String? sealedBrood,
    String? pollen,
  }) {
    if (_isCritical(
      queenPresent: queenPresent,
      queenLayingEggs: queenLayingEggs,
      sealedBrood: sealedBrood,
      mitesPresent: mitesPresent,
    )) {
      return (
        conditionStatus: 'critical',
        issueFound: true,
        maintenanceRequired: true,
      );
    }

    if (_isWarning(
      queenMated: queenMated,
      queenCells: queenCells,
      sealedBrood: sealedBrood,
      pollen: pollen,
    )) {
      return (
        conditionStatus: 'warning',
        issueFound: true,
        maintenanceRequired: false,
      );
    }

    return (
      conditionStatus: 'good',
      issueFound: false,
      maintenanceRequired: false,
    );
  }

  static bool _isCritical({
    required String? queenPresent,
    required String? queenLayingEggs,
    required String? sealedBrood,
    required String? mitesPresent,
  }) {
    return queenPresent == 'no' ||
        queenLayingEggs == 'no' ||
        sealedBrood == 'none' ||
        mitesPresent == 'yes';
  }

  static bool _isWarning({
    required String? queenMated,
    required String? queenCells,
    required String? sealedBrood,
    required String? pollen,
  }) {
    return queenCells == 'yes' ||
        queenMated == 'not_done' ||
        sealedBrood == 'very_low' ||
        pollen == 'none';
  }
}
