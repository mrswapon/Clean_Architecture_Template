import 'package:flutter_test/flutter_test.dart';
import 'package:clean_architecture_template/core/utils/entry_status_helper.dart';

void main() {
  group('EntryStatusHelper.fromBeeFields', () {
    test('returns good when all answers are healthy', () {
      final result = EntryStatusHelper.fromBeeFields(
        queenPresent: 'yes',
        queenLayingEggs: 'yes',
        queenMated: 'done',
        mitesPresent: 'no',
        queenCells: 'no',
        sealedBrood: 'normal',
        pollen: 'normal',
      );

      expect(result.conditionStatus, 'good');
      expect(result.issueFound, isFalse);
      expect(result.maintenanceRequired, isFalse);
    });

    test('returns critical when queen is missing', () {
      final result = EntryStatusHelper.fromBeeFields(
        queenPresent: 'no',
        queenLayingEggs: 'yes',
        queenMated: 'done',
        mitesPresent: 'no',
        queenCells: 'no',
        sealedBrood: 'normal',
        pollen: 'normal',
      );

      expect(result.conditionStatus, 'critical');
      expect(result.issueFound, isTrue);
      expect(result.maintenanceRequired, isTrue);
    });

    test('returns critical when queen is not laying', () {
      final result = EntryStatusHelper.fromBeeFields(
        queenPresent: 'yes',
        queenLayingEggs: 'no',
        queenMated: 'done',
        mitesPresent: 'no',
        queenCells: 'no',
        sealedBrood: 'normal',
        pollen: 'normal',
      );

      expect(result.conditionStatus, 'critical');
    });

    test('returns critical when mites are present', () {
      final result = EntryStatusHelper.fromBeeFields(
        queenPresent: 'yes',
        queenLayingEggs: 'yes',
        queenMated: 'done',
        mitesPresent: 'yes',
        queenCells: 'no',
        sealedBrood: 'normal',
        pollen: 'normal',
      );

      expect(result.conditionStatus, 'critical');
    });

    test('returns critical when sealed brood is none', () {
      final result = EntryStatusHelper.fromBeeFields(
        queenPresent: 'yes',
        queenLayingEggs: 'yes',
        queenMated: 'done',
        mitesPresent: 'no',
        queenCells: 'no',
        sealedBrood: 'none',
        pollen: 'normal',
      );

      expect(result.conditionStatus, 'critical');
    });

    test('returns warning for queen cells without critical signals', () {
      final result = EntryStatusHelper.fromBeeFields(
        queenPresent: 'yes',
        queenLayingEggs: 'yes',
        queenMated: 'done',
        mitesPresent: 'no',
        queenCells: 'yes',
        sealedBrood: 'normal',
        pollen: 'normal',
      );

      expect(result.conditionStatus, 'warning');
      expect(result.issueFound, isTrue);
      expect(result.maintenanceRequired, isFalse);
    });

    test('returns warning for not mated queen', () {
      final result = EntryStatusHelper.fromBeeFields(
        queenPresent: 'yes',
        queenLayingEggs: 'yes',
        queenMated: 'not_done',
        mitesPresent: 'no',
        queenCells: 'no',
        sealedBrood: 'normal',
        pollen: 'normal',
      );

      expect(result.conditionStatus, 'warning');
    });

    test('returns warning for very low brood or no pollen', () {
      expect(
        EntryStatusHelper.fromBeeFields(
          queenPresent: 'yes',
          queenLayingEggs: 'yes',
          queenMated: 'done',
          mitesPresent: 'no',
          queenCells: 'no',
          sealedBrood: 'very_low',
          pollen: 'normal',
        ).conditionStatus,
        'warning',
      );

      expect(
        EntryStatusHelper.fromBeeFields(
          queenPresent: 'yes',
          queenLayingEggs: 'yes',
          queenMated: 'done',
          mitesPresent: 'no',
          queenCells: 'no',
          sealedBrood: 'normal',
          pollen: 'none',
        ).conditionStatus,
        'warning',
      );
    });

    test('critical takes priority over warning', () {
      final result = EntryStatusHelper.fromBeeFields(
        queenPresent: 'no',
        queenLayingEggs: 'yes',
        queenMated: 'not_done',
        mitesPresent: 'no',
        queenCells: 'yes',
        sealedBrood: 'very_low',
        pollen: 'none',
      );

      expect(result.conditionStatus, 'critical');
    });
  });
}
