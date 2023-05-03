import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pelem_core/core.dart';

import 'movie_vertical_card.dart';

class MovieVertical extends StatelessWidget {
  const MovieVertical({
    required this.movies,
    super.key,
  });

  final List<Movie> movies;

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
            itemCount: 10,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => MovieVerticalCard(
              movie: movies[index],
            ),
            separatorBuilder: (_, __) => SizedBox(height: 32.0.h),
          ),
        ],
      ),
    );
  }
}
