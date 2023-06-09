import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_tv/tv.dart';

class TVVertical extends StatelessWidget {
  const TVVertical({
    required this.tv,
    super.key,
  });

  final List<TV> tv;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 24.0.h),
          ListView.separated(
            itemCount: tv.length + 1,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => index >= tv.length
                ? const TVVerticalCardSkeleton()
                : TVVerticalCard(tv: tv[index]),
            separatorBuilder: (_, __) => SizedBox(height: 32.0.h),
          ),
        ],
      ),
    );
  }
}
