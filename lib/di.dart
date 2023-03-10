// import 'package:get_it/get_it.dart';

// Future<void> initAuthServiceLocator(
//   GetIt sl,
// ) async {
  
//   localDataSources(sl);
//   remoteDataSources(sl);
//   repositories(sl);
//   useCases(sl);
// }

// void repositories(GetIt sl) {
//   sl.registerLazySingleton<AuthRepository>(
//     () => AuthRepositoryImpl(
//       sl(),
//       sl(),
//     ),
//   );
// }

// void localDataSources(GetIt sl) {
//   sl.registerLazySingleton<AuthLocalDataSource>(
//     () => AuthLocalDataSourceImpl(),
//   );
// }

// void remoteDataSources(GetIt sl) {
//   sl.registerLazySingleton<AuthRemoteDataSource>(
//     () => AuthRemoteDataSource(
//       sl(),
//     ),
//   );
// }

// void useCases(GetIt sl) {
//   sl.registerLazySingleton(
//     () => GetAuthUserUseCase(
//       sl(),
//     ),
//   );

//   sl.registerLazySingleton(
//     () => AuthUserSignInUseCase(
//       sl(),
//     ),
//   );
// }
