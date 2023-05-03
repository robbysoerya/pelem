import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TVVerticalCardSkeleton extends StatelessWidget {
  const TVVerticalCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.passthrough,
      children: [
        Container(
          width: double.infinity,
          height: 100.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0.r),
            border: Border.all(
              color: Colors.white,
              width: 2.w,
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(
              left: 100.r,
              top: 16.0.r,
              right: 16.0.r,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 0.25.sw,
                      height: 24.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0.r),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 0.15.sw,
                      height: 24.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0.r),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0.h),
                Container(
                  width: double.infinity,
                  height: 32.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0.r),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 16.0.r,
          bottom: 16.0.r,
          child: Container(
            width: 75.r,
            height: 100.r,
            margin: EdgeInsets.only(right: 8.0.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0.r),
            ),
          ),
        ),
      ],
    );
  }
}
