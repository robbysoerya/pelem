import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pelem_profile/presentation/widget/widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.r),
      child: Column(
        children: [
          const UserSection(),
          SizedBox(height: 16.0.h),
          const SocialSection(),
          SizedBox(height: 16.0.h),
          const IntroduceSection(),
          SizedBox(height: 24.0.h),
          SkillSection(),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Container(
            height: 0.35.sh,
            color: Colors.cyan[100],
          ),
          Positioned(
            top: 0.26.sh,
            left: 0.0,
            right: 0.0,
            child: _buildContent(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
}
