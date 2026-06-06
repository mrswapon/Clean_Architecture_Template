/// Fixed hive inspection keys stored in [custom_fields] (no DB migration).
class BeeEntryFields {
  BeeEntryFields._();

  static const queenBirthDate = 'queen_birth_date';
  static const queenLayingEggs = 'queen_laying_eggs';
  static const queenPresent = 'queen_present';
  static const queenMated = 'queen_mated';
  static const mitesPresent = 'mites_present';
  static const sealedBrood = 'sealed_brood';
  static const pollen = 'pollen';
  static const queenCells = 'queen_cells';
  static const queenCellAge = 'queen_cell_age';

  static const allKeys = {
    queenBirthDate,
    queenLayingEggs,
    queenPresent,
    queenMated,
    mitesPresent,
    sealedBrood,
    pollen,
    queenCells,
    queenCellAge,
  };

  static bool isBeeKey(String key) => allKeys.contains(key);

  static Map<String, dynamic> buildMap({
    String? queenBirthDate,
    required String? queenLayingEggs,
    required String? queenPresent,
    required String? queenMated,
    required String? mitesPresent,
    required String? sealedBrood,
    required String? pollen,
    required String? queenCells,
    String? queenCellAge,
  }) {
    return {
      if (queenBirthDate != null && queenBirthDate.isNotEmpty)
        BeeEntryFields.queenBirthDate: queenBirthDate,
      if (queenLayingEggs != null) BeeEntryFields.queenLayingEggs: queenLayingEggs,
      if (queenPresent != null) BeeEntryFields.queenPresent: queenPresent,
      if (queenMated != null) BeeEntryFields.queenMated: queenMated,
      if (mitesPresent != null) BeeEntryFields.mitesPresent: mitesPresent,
      if (sealedBrood != null) BeeEntryFields.sealedBrood: sealedBrood,
      if (pollen != null) BeeEntryFields.pollen: pollen,
      if (queenCells != null) BeeEntryFields.queenCells: queenCells,
      if (queenCells == 'yes' &&
          queenCellAge != null &&
          queenCellAge.trim().isNotEmpty)
        BeeEntryFields.queenCellAge: queenCellAge.trim(),
    };
  }
}
