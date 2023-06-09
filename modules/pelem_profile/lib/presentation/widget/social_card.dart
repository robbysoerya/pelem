import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pelem_core/utils/palette.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
    required this.icon,
    required this.url,
  });

  final IconData icon;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final uri = Uri.parse(url);
        final sm = ScaffoldMessenger.of(context);
        if (await canLaunchUrl(uri)) {
          launchUrl(uri);
          return;
        }
        sm.showSnackBar(
          const SnackBar(
            content: Text(
              'No app found to open scheme',
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.red,
          ),
        );
      },
      child: Container(
        height: 40.0.r,
        width: 40.0.r,
        decoration: BoxDecoration(
          color: Palette.primaryAncentColor,
          borderRadius: BorderRadius.circular(12.0.r),
        ),
        child: Icon(icon),
      ),
    );
  }
}
