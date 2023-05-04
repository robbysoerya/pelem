import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pelem/app/app.dart';
import 'package:pelem_movie/movie.dart';
import 'package:pelem_profile/profile.dart';
import 'package:pelem_tv/tv.dart';

import 'injection.dart';

final _shellNavigatorKey = GlobalKey<NavigatorState>();
final _routeNavigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  injectionInit();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  final _routes = GoRouter(
    navigatorKey: _routeNavigatorKey,
    initialLocation: '/movie',
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => AppView(child: child),
        routes: [
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: '/movie',
            builder: (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => locator<NowPlayingMoviesBloc>(),
                ),
                BlocProvider(
                  create: (context) => locator<UpcomingMoviesBloc>(),
                ),
                BlocProvider(
                  create: (context) => locator<PopularMoviesBloc>(),
                ),
              ],
              child: const MovieView(),
            ),
            routes: [
              GoRoute(
                parentNavigatorKey: _routeNavigatorKey,
                name: 'movie-detail',
                path: ':id',
                builder: (context, state) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => locator<MovieDetailBloc>(),
                    ),
                    BlocProvider(
                      create: (context) => locator<MovieReviewBloc>(),
                    ),
                  ],
                  child: MovieDetailView(
                    id: state.pathParameters['id']!,
                  ),
                ),
              ),
            ],
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: '/tv',
            builder: (context, state) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => locator<OnTheAirTVBloc>(),
                ),
                BlocProvider(
                  create: (context) => locator<PopularTVBloc>(),
                ),
              ],
              child: const TVView(),
            ),
            routes: [
              GoRoute(
                parentNavigatorKey: _routeNavigatorKey,
                name: 'tv-detail',
                path: ':id',
                builder: (context, state) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => locator<TVDetailBloc>(),
                    ),
                    BlocProvider(
                      create: (context) => locator<TVReviewBloc>(),
                    ),
                  ],
                  child: TVDetailView(id: state.pathParameters['id']!),
                ),
              )
            ],
          ),
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: '/profile',
            builder: (context, state) => const ProfileView(),
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _routes,
          title: 'Pelem',
          theme: ThemeData.light().copyWith(
            appBarTheme: ThemeData.light().appBarTheme.copyWith(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark,
              ),
            ),
          ),
        );
      },
    );
  }
}
