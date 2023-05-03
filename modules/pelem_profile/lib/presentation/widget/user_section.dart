import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserSection extends StatelessWidget {
  const UserSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50.0.r,
          backgroundImage: const AssetImage(
            'assets/images/me.jpg',
          ),
        ),
        SizedBox(height: 8.0.h),
        Text(
          'Robby Surya Pratama',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: 8.0.h),
        const Text('Senior Mobile Engineer'),
      ],
    );
  }
}
