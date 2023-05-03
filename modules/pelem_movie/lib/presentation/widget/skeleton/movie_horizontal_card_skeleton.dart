import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MovieHorizontalCardSkeleton extends StatelessWidget {
  const MovieHorizontalCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 8.0.r),
          width: 125.0.r,
          height: 150.0.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0.r),
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4.0.h),
        Container(
          width: 75.0.r,
          height: 16.0.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0.r),
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
