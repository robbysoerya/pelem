import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TVAppBar extends StatelessWidget with PreferredSizeWidget {
  const TVAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(50.0.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[200],
      elevation: 0.0,
      centerTitle: false,
      title: Text(
        'TV',
        style: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
