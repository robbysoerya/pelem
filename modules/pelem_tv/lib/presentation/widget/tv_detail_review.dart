import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pelem_core/core.dart';

class TVDetailReview extends StatelessWidget {
  const TVDetailReview({
    required this.reviews,
    super.key,
  });

  final List<TVReview> reviews;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Review',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: 8.0.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            reviews.length > 3 ? 3 : reviews.length,
            (index) => ReviewCard(
              author: reviews[index].author,
              content: reviews[index].content,
              rating: reviews[index].authorDetails.rating,
            ),
          ),
        ),
      ],
    );
  }
}
