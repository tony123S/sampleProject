import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/cubit/log_in_cubit.dart';
import 'package:flutter_application_1/presentation/cubit/overlay_loading_cubit.dart';
import 'package:get_it/get_it.dart';

import 'app.dart';

GetIt sl = GetIt.instance;

void main() async {
  await initService(sl);

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

Future<void> initService(
  GetIt sl,
) async {
  cubit(sl);
}

cubit(GetIt sl) {
  sl.registerSingleton<OverlayLoadingCubit>(OverlayLoadingCubit());
  sl.registerFactory(() => LogInCubit(sl<OverlayLoadingCubit>()));
}
