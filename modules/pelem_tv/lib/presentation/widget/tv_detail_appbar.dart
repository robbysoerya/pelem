import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pelem_core/core.dart';

class TVDetailAppBar extends StatelessWidget {
  const TVDetailAppBar({required this.tv, super.key});

  final TVDetail tv;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300.h,
      elevation: 0.0,
      backgroundColor: Colors.white,
      pinned: true,
      stretch: true,
      leading: GestureDetector(
        onTap: () => context.pop(),
        child: Container(
          margin: EdgeInsets.only(left: 8.0.r),
          padding: EdgeInsets.all(8.0.r),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        stretchModes: const [
          StretchMode.zoomBackground,
          StretchMode.fadeTitle,
        ],
        background: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            fit: StackFit.expand,
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.srcOver,
                ),
                child: CachedNetworkImage(
                  imageUrl: '$kBaseImageUrl${tv.posterPath}',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: -1,
                left: 0,
                right: 0,
                child: Container(
                  height: 100.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30.0.r),
                    ),
                    border: Border.all(
                      color: Colors.white,
                      width: 0,
                    ),
                  ),
                  child: Container(
                    width: 125.r,
                    margin: EdgeInsets.only(
                      left: 157.r,
                      top: 16.0.r,
                      right: 16.0.r,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            tv.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        const Text('Director: Jessica'),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24.r,
                bottom: 1,
                child: Container(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
