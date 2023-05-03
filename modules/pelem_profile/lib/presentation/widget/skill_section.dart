import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'skill_chip.dart';

class SkillSection extends StatelessWidget {
  SkillSection({super.key});

  final _skills = [
    'Flutter',
    'Dart',
    'Android',
    'iOS',
    'Git',
    'Firebase',
    'Java',
    'Kotlin',
    'Swift',
    'SQL',
    'Python',
    'CI/CD',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Skills',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: 8.0.h),
        Wrap(
          spacing: 8.0.r,
          children: List.generate(
            _skills.length,
            (index) => SkillChip(
              label: _skills[index],
            ),
          ),
        ),
      ],
    );
  }
}
