import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import 'movie_horizontal_card_skeleton.dart';

class MovieHorizontalSkeleton extends StatelessWidget {
  const MovieHorizontalSkeleton({super.key});

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
          SizedBox(height: 8.0.h),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.0.r),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                5,
                (index) => const MovieHorizontalCardSkeleton(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
