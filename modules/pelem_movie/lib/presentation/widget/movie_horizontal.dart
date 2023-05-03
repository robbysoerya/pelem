import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pelem_core/core.dart';

import 'movie_horizontal_card.dart';

class MovieHorizontal extends StatelessWidget {
  const MovieHorizontal({
    required this.title,
    required this.movies,
    super.key,
  });

  final List<Movie> movies;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0.r),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        SizedBox(height: 8.0.h),
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.0.r),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              movies.length > 10 ? 10 : movies.length,
              (index) => MovieHorizontalCard(
                movie: movies[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
