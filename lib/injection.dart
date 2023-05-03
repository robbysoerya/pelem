import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pelem_core/core.dart';
import 'package:pelem_movie/movie.dart';
import 'package:pelem_tv/tv.dart';

final locator = GetIt.instance;

void injectionInit() {
  // Bloc Injection
  locator.registerFactory(
    () => MovieDetailBloc(
      getMovieDetail: locator(),
    ),
  );
  locator.registerFactory(
    () => PopularMoviesBloc(
      locator(),
    ),
  );
  locator.registerFactory(
    () => UpcomingMoviesBloc(
      locator(),
    ),
  );
  locator.registerFactory(
    () => NowPlayingMoviesBloc(
      locator(),
    ),
  );
  locator.registerFactory(
    () => MovieReviewBloc(
      getMovieReview: locator(),
    ),
  );
  locator.registerFactory(
    () => OnTheAirTVBloc(
      locator(),
    ),
  );
  locator.registerFactory(
    () => PopularTVBloc(
      locator(),
    ),
  );
  locator.registerFactory(
    () => TVDetailBloc(
      getTVDetail: locator(),
    ),
  );
  locator.registerFactory(
    () => TVSeasonDetailBloc(
      locator(),
    ),
  );
  locator.registerFactory(
    () => TVReviewBloc(
      locator(),
    ),
  );

  //Usecase Injection
  locator.registerLazySingleton(() => GetNowPlayingMovies(locator()));
  locator.registerLazySingleton(() => GetPopularMovies(locator()));
  locator.registerLazySingleton(() => GetUpcomingMovies(locator()));
  locator.registerLazySingleton(() => GetMovieDetail(locator()));
  locator.registerLazySingleton(() => GetMovieReview(locator()));
  locator.registerLazySingleton(() => GetOnTheAirTV(locator()));
  locator.registerLazySingleton(() => GetPopularTV(locator()));
  locator.registerLazySingleton(() => GetTVDetail(locator()));
  locator.registerLazySingleton(() => GetTVSeasonDetail(locator()));
  locator.registerLazySingleton(() => GetTVReview(locator()));

  //Repository Injection
  locator.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(
      remoteDataSource: locator(),
      networkInfo: locator(),
    ),
  );
  locator.registerLazySingleton<TVRepository>(
    () => TVRepositoryImpl(
      remoteDataSource: locator(),
      networkInfo: locator(),
    ),
  );

  //DataSource Injection
  locator.registerLazySingleton<MovieRemoteDataSource>(
    () => MovieRemoteDataSourceImpl(
      ns: locator(),
    ),
  );
  locator.registerLazySingleton<TVRemoteDataSource>(
    () => TVRemoteDataSourceImpl(
      ns: locator(),
    ),
  );

  //Service Injection
  locator.registerLazySingleton(() => NetworkClient());
  locator.registerLazySingleton(() => InternetConnectionChecker());
  locator.registerLazySingleton(() => NetworkService());
  locator.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      dataConnectionChecker: locator(),
    ),
  );
}
