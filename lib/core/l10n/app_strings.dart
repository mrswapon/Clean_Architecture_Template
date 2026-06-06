import 'package:flutter/material.dart';
import 'package:clean_architecture_template/l10n/app_localizations.dart';

/// Access localized strings without [BuildContext] (blocs, parsers).
class AppStrings {
  AppStrings._();

  static Locale _locale = const Locale('en');

  static void setLocale(Locale locale) => _locale = locale;

  static Locale get locale => _locale;

  static AppLocalizations get t => lookupAppLocalizations(_locale);
}
