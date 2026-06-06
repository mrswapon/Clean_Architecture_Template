import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_strings.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en'));

  static const _prefKey = 'app_locale';

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_prefKey);
    if (code == 'bn') {
      _apply(const Locale('bn'));
    } else {
      _apply(const Locale('en'));
    }
  }

  Future<void> setLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_prefKey, locale.languageCode);
    _apply(locale);
  }

  Future<void> toggle() async {
    final next = state.languageCode == 'bn'
        ? const Locale('en')
        : const Locale('bn');
    await setLocale(next);
  }

  void _apply(Locale locale) {
    AppStrings.setLocale(locale);
    emit(locale);
  }
}
