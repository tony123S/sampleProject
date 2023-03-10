import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/cubit/overlay_loading_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_route.dart';
import 'main.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<OverlayLoadingCubit>()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Sample",
        onGenerateRoute: AppRoute.onGenerateRoutes,
      ),
    );
  }
}
