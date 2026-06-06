import 'package:flutter/material.dart';
import '../l10n/l10n_extension.dart';
import '../utils/extensions.dart';

class StatusBadge extends StatelessWidget {
  final String status;
  final bool small;

  const StatusBadge({super.key, required this.status, this.small = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: small ? 8 : 12,
        vertical: small ? 3 : 5,
      ),
      decoration: BoxDecoration(
        color: status.statusSurface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: status.statusColor.softBorder),
      ),
      child: Text(
        status.statusLabel(context.l10n),
        style: TextStyle(
          color: status.statusColor,
          fontSize: small ? 11 : 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
