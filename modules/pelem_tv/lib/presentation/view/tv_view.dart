import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pelem_tv/presentation/bloc/bloc.dart';
import 'package:pelem_tv/presentation/widget/widget.dart';

class TVView extends StatefulWidget {
  const TVView({super.key});

  @override
  State<TVView> createState() => _TVViewState();
}

class _TVViewState extends State<TVView> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<OnTheAirTVBloc>().add(const OnTheAirTVStarted());
      context.read<PopularTVBloc>().add(const PopularTVStarted());
    });
  }

  Widget _buildPopularTV() {
    final states = context.watch<PopularTVBloc>().state;
    return states.maybeWhen(
      empty: () => const SizedBox(),
      success: (tv) => TVVertical(tv: tv),
      orElse: () => const TVVerticalSkeleton(),
    );
  }

  Widget _buildOnTheAirTV() {
    final states = context.watch<OnTheAirTVBloc>().state;
    return states.maybeWhen(
      empty: () => const SizedBox(),
      success: (tv) => TVHorizontal(title: 'On The Air', tv: tv),
      orElse: () => const TVHorizontalSkeleton(),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.grey[200],
      child: NotificationListener(
        onNotification: (ScrollEndNotification notification) {
           final metrics = notification.metrics;
          final maxScroll = metrics.maxScrollExtent;
          final currentScroll = metrics.pixels;
          final delta = 50.0.h;
          final isEndPage = maxScroll - currentScroll <= delta;
          if (isEndPage) {
            context.read<PopularTVBloc>().add(const PopularTVStarted());
            return true;
          }
          return false;
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16.0.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildOnTheAirTV(),
              SizedBox(height: 24.0.h),
              _buildPopularTV()
            ],
          ),
        ),
      ),
    );
  }

  _buildAppBar() => const TVAppBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}
