import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_tv/presentation/bloc/bloc.dart';
import 'package:pelem_tv/presentation/widget/tv_detail_appbar.dart';
import 'package:pelem_tv/presentation/widget/tv_detail_review.dart';

class TVDetailView extends StatefulWidget {
  const TVDetailView({required this.id, super.key});

  final String id;

  @override
  State<TVDetailView> createState() => _TVDetailViewState();
}

class _TVDetailViewState extends State<TVDetailView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () {
        context.read<TVDetailBloc>().add(TVDetailStarted(int.parse(widget.id)));
        context.read<TVReviewBloc>().add(TVReviewStarted(int.parse(widget.id)));
      },
    );
  }

  Widget _buildContent(BuildContext context) {
    final states = context.watch<TVDetailBloc>().state;
    return states.maybeWhen(
      orElse: () => const SizedBox(),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (f) => Center(child: Text(f.message)),
      success: (tv) => Container(
        padding: EdgeInsets.all(16.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIntroduction(context, tv),
            SizedBox(height: 24.0.h),
            _buildReview(context),
          ],
        ),
      ),
    );
  }

  Widget _buildIntroduction(BuildContext context, TVDetail tv) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Introduction',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: 8.0.h),
        Text(tv.overview),
      ],
    );
  }

  Widget _buildReview(BuildContext context) {
    final states = context.watch<TVReviewBloc>().state;
    return states.maybeWhen(
      orElse: () => const SizedBox(),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (f) => Center(child: Text(f.message)),
      success: (reviews) => TVDetailReview(reviews: reviews),
    );
  }

  Widget _buildAppBar() {
    final states = context.watch<TVDetailBloc>().state;
    return states.maybeWhen(
      orElse: () => const SliverToBoxAdapter(),
      success: (tv) => TVDetailAppBar(tv: tv),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          SliverToBoxAdapter(
            child: SizedBox(height: 24.0.h),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SingleChildScrollView(
                  child: _buildContent(context),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
