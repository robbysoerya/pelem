import 'package:flutter/material.dart';
import 'package:pelem_core/utils/palette.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.white),
      ),
      backgroundColor: Palette.secondaryColor,
    );
  }
}
