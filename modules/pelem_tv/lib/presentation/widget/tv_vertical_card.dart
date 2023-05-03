import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pelem_core/core.dart';

class TVVerticalCard extends StatelessWidget {
  const TVVerticalCard({
    required this.tv,
    super.key,
  });

  final TV tv;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.goNamed(
        'tv-detail',
        pathParameters: {'id': tv.id.toString()},
      ),
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.passthrough,
        children: [
          Container(
            width: double.infinity,
            height: 100.r,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0.r),
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
                    children: [
                      Flexible(
                        child: Text(
                          '${tv.name}',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Text(
                        '${tv.voteAverage}',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                                ),
                      )
                    ],
                  ),
                  SizedBox(height: 4.0.h),
                  Text(
                    '${tv.overview}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
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
                borderRadius: BorderRadius.circular(8.0.r),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    '$kBaseImageUrl${tv.posterPath}',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
