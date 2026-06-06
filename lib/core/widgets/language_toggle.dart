import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../l10n/l10n_extension.dart';
import '../l10n/locale_cubit.dart';
import '../theme/app_colors.dart';

/// Switches between English and Bangla.
class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key, this.compact = false});

  final bool compact;

  @override
  Widget build(BuildContext context) {
    final locale = context.watch<LocaleCubit>().state;
    final isBn = locale.languageCode == 'bn';

    if (compact) {
      return IconButton(
        tooltip: context.l10n.language,
        onPressed: () => context.read<LocaleCubit>().toggle(),
        icon: Text(
          isBn ? 'EN' : 'বাং',
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 13,
            color: AppColors.textOnPrimary,
          ),
        ),
      );
    }

    return TextButton.icon(
      onPressed: () => context.read<LocaleCubit>().toggle(),
      icon: const Icon(Icons.language, size: 20, color: AppColors.textOnPrimary),
      label: Text(
        isBn ? context.l10n.english : context.l10n.bangla,
        style: const TextStyle(color: AppColors.textOnPrimary),
      ),
    );
  }
}
