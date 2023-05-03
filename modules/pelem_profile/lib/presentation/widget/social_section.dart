import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'social_card.dart';

class SocialSection extends StatelessWidget {
  const SocialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SocialCard(
          icon: FontAwesomeIcons.github,
          url: 'https://github.com/robbysoerya',
        ),
        SizedBox(width: 16.0.w),
        const SocialCard(
          icon: FontAwesomeIcons.linkedin,
          url: 'https://linkedin.com/in/robbysoerya',
        ),
        SizedBox(width: 16.0.w),
        const SocialCard(
          icon: FontAwesomeIcons.envelope,
          url: 'mailto:robbysoerya6@gmail.com',
        ),
      ],
    );
  }
}
