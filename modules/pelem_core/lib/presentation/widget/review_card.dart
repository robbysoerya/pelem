import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pelem_core/core.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    required this.author,
    required this.content,
    required this.rating,
    super.key,
  });

  final String author;
  final String content;
  final double? rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0.h),
      padding: EdgeInsets.all(16.0.r),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  author,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              SizedBox(width: 8.0.w),
              Visibility(
                visible: rating != null,
                child: StarRating(
                  rating: rating ?? 0.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0.h),
          Text(content)
        ],
      ),
    );
  }
}
