import '../l10n/app_strings.dart';

/// Parses Laravel API error JSON into user-facing text.
class ApiErrorParser {
  ApiErrorParser._();

  static String messageFrom(dynamic data, {String? fallback}) {
    if (data == null) {
      return fallback ?? AppStrings.t.somethingWentWrong;
    }

    if (data is String && data.trim().isNotEmpty) {
      return data.trim();
    }

    if (data is! Map) {
      return fallback ?? AppStrings.t.somethingWentWrong;
    }

    final map = Map<String, dynamic>.from(data);
    final direct = map['message'];
    if (direct is String && direct.trim().isNotEmpty) {
      return direct.trim();
    }

    final errors = map['errors'];
    if (errors is Map && errors.isNotEmpty) {
      final formatted = _formatFieldErrors(errors);
      if (formatted.isNotEmpty) return formatted;
    }

    return fallback ?? 'Something went wrong. Please try again.';
  }

  static Map<String, dynamic> errorsFrom(dynamic data) {
    if (data is Map) {
      final errors = data['errors'];
      if (errors is Map) {
        return Map<String, dynamic>.from(errors);
      }
    }
    return {};
  }

  static String _formatFieldErrors(Map<dynamic, dynamic> errors) {
    final lines = <String>[];
    for (final entry in errors.entries) {
      final field = entry.key.toString();
      final value = entry.value;
      if (value is List && value.isNotEmpty) {
        for (final item in value) {
          lines.add(_labelField(field, item.toString()));
        }
      } else if (value != null && value.toString().isNotEmpty) {
        lines.add(_labelField(field, value.toString()));
      }
    }
    return lines.join('\n');
  }

  static String _labelField(String field, String message) {
    if (field == 'general' || field.isEmpty) return message;
    final label = field.replaceAll('_', ' ');
    return '$label: $message';
  }
}
