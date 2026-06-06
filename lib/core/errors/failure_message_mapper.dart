import '../l10n/app_strings.dart';
import 'failures.dart';

/// Converts [Failure] types into clear messages for snackbars and dialogs.
class FailureMessageMapper {
  FailureMessageMapper._();

  static String from(Failure failure) {
    if (failure is ValidationFailure) {
      return _validationMessage(failure);
    }
    if (failure.message.trim().isNotEmpty) {
      return failure.message.trim();
    }
    return AppStrings.t.somethingWentWrong;
  }

  static String _validationMessage(ValidationFailure failure) {
    if (failure.message.trim().isNotEmpty &&
        failure.message.trim().toLowerCase() != 'validation failed') {
      // Prefer API message when present (e.g. "You cannot freeze your own account.")
      if (failure.errors.isEmpty) {
        return failure.message.trim();
      }
    }

    if (failure.errors.isEmpty) {
      return failure.message.trim().isNotEmpty
          ? failure.message.trim()
          : AppStrings.t.checkInput;
    }

    final lines = <String>[];
    for (final entry in failure.errors.entries) {
      final field = entry.key.toString();
      final value = entry.value;
      if (value is List) {
        for (final item in value) {
          lines.add(_fieldLine(field, item.toString()));
        }
      } else if (value != null) {
        lines.add(_fieldLine(field, value.toString()));
      }
    }

    if (lines.isNotEmpty) return lines.join('\n');
    return failure.message.trim().isNotEmpty
        ? failure.message.trim()
        : AppStrings.t.checkInput;
  }

  static String _fieldLine(String field, String message) {
    if (field == 'general') return message;
    final label = field.replaceAll('_', ' ');
    return '$label: $message';
  }
}
