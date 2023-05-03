import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_movie/presentation/bloc/bloc.dart';
import 'package:pelem_movie/presentation/widget/widget.dart';

class MovieDetailView extends StatefulWidget {
  const MovieDetailView({required this.id, super.key});

  final String id;

  @override
  State<MovieDetailView> createState() => _MovieDetailViewState();
}

class _MovieDetailViewState extends State<MovieDetailView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () {
        context
            .read<MovieDetailBloc>()
            .add(MovieDetailStarted(int.parse(widget.id)));
        context
            .read<MovieReviewBloc>()
            .add(MovieReviewEvent.started(int.parse(widget.id)));
      },
    );
  }

  Widget _buildContent(BuildContext context) {
    final states = context.watch<MovieDetailBloc>().state;
    return states.maybeWhen(
      orElse: () => const SizedBox(),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (f) => Center(child: Text(f.message)),
      success: (movie) => Container(
        padding: EdgeInsets.all(16.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIntroduction(context, movie),
            SizedBox(height: 24.0.h),
            _buildReview(context),
          ],
        ),
      ),
    );
  }

  Widget _buildIntroduction(BuildContext context, MovieDetail movie) {
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
        Text(movie.overview),
      ],
    );
  }

  Widget _buildReview(BuildContext context) {
    final states = context.watch<MovieReviewBloc>().state;
    return states.maybeWhen(
      orElse: () => const SizedBox(),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (f) => Center(child: Text(f.message)),
      success: (reviews) => MovieDetailReview(reviews: reviews),
    );
  }

  Widget _buildAppBar() {
    final states = context.watch<MovieDetailBloc>().state;
    return states.maybeWhen(
      orElse: () => const SliverToBoxAdapter(),
      success: (movie) => MovieDetailAppBar(movie: movie),
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
