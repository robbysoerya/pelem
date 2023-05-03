import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pelem_movie/presentation/bloc/bloc.dart';
import 'package:pelem_movie/presentation/widget/widget.dart';

class MovieView extends StatefulWidget {
  const MovieView({super.key});

  @override
  State<MovieView> createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<NowPlayingMoviesBloc>().add(const NowPlayingMoviesStarted());
      context.read<UpcomingMoviesBloc>().add(const UpcomingMoviesStarted());
      context.read<PopularMoviesBloc>().add(const PopularMoviesStarted());
    });
  }

  Widget _buildNowPlayingMovies() {
    final states = context.watch<NowPlayingMoviesBloc>().state;
    return states.maybeWhen(
      empty: () => const Center(child: Text('Empty')),
      error: (f) => Center(child: Text(f.message)),
      success: (data) => MovieHorizontal(title: 'Now Playing', movies: data),
      orElse: () => const MovieHorizontalSkeleton(),
    );
  }

  Widget _buildUpcomingMovies() {
    final states = context.watch<UpcomingMoviesBloc>().state;
    return states.maybeWhen(
      empty: () => const Center(child: Text('Empty')),
      error: (f) => Center(child: Text(f.message)),
      success: (data) => MovieHorizontal(title: 'Upcoming', movies: data),
      orElse: () => const MovieHorizontalSkeleton(),
    );
  }

  Widget _buildPopularMovies() {
    final states = context.watch<PopularMoviesBloc>().state;
    return states.maybeWhen(
      empty: () => const Center(child: Text('Empty')),
      error: (f) => Center(child: Text(f.message)),
      success: (data) => MovieVertical(movies: data),
      orElse: () => const MovieVerticalSkeleton(),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.grey[200],
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 16.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNowPlayingMovies(),
            SizedBox(height: 24.0.h),
            _buildUpcomingMovies(),
            SizedBox(height: 24.0.h),
            _buildPopularMovies(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[200],
      elevation: 0.0,
      centerTitle: false,
      title: Text(
        'Movies',
        style: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }
}
