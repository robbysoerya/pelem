import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import 'tv_vertical_card_skeleton.dart';

class TVVerticalSkeleton extends StatelessWidget {
  const TVVerticalSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0.r),
            width: 0.35.sw,
            height: 24.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0.r),
              color: Colors.white,
            ),
          ),
          SizedBox(height: 24.0.h),
          ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.0.r),
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, __) => const TVVerticalCardSkeleton(),
            separatorBuilder: (_, __) => SizedBox(height: 32.0.h),
          ),
        ],
      ),
    );
  }
}
