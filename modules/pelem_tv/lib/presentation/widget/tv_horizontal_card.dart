import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pelem_core/core.dart';

class TVHorizontalCard extends StatelessWidget {
  const TVHorizontalCard({
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
      child: Container(
        width: 125.0.r,
        margin: EdgeInsets.only(right: 8.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 125.r,
              height: 150.r,
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
            SizedBox(height: 4.0.h),
            Text(
              '${tv.name}\n',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
