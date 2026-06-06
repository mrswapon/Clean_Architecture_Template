import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class ChoiceOption {
  final String value;
  final String label;

  const ChoiceOption({required this.value, required this.label});
}

/// Chip-style toggles (checkbox-like selection) for 2–3 options.
class ChoiceToggleField extends StatelessWidget {
  final String label;
  final List<ChoiceOption> options;
  final String? value;
  final ValueChanged<String> onChanged;
  final String? errorText;

  const ChoiceToggleField({
    super.key,
    required this.label,
    required this.options,
    required this.value,
    required this.onChanged,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: options.map((opt) {
            final selected = value == opt.value;
            return FilterChip(
              label: Text(opt.label),
              selected: selected,
              showCheckmark: true,
              selectedColor: AppColors.primarySurface,
              checkmarkColor: AppColors.primary,
              labelStyle: TextStyle(
                color: selected ? AppColors.primaryDark : AppColors.textPrimary,
                fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
              ),
              side: BorderSide(
                color: selected ? AppColors.primary : AppColors.border,
              ),
              onSelected: (_) => onChanged(opt.value),
            );
          }).toList(),
        ),
        if (errorText != null) ...[
          const SizedBox(height: 4),
          Text(
            errorText!,
            style: const TextStyle(color: AppColors.error, fontSize: 12),
          ),
        ],
        const SizedBox(height: 12),
      ],
    );
  }
}
