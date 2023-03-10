import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/presentation/cubit/log_in_cubit.dart';
import 'package:flutter_application_1/presentation/screen/log_in_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoute {
  static const loginScreen = '/loginPage';

  static MaterialPageRoute<dynamic> _loginScreenRoute() {
    return MaterialPageRoute(builder: (context) {
      return BlocProvider(
          create: (_) => sl<LogInCubit>(), child: (const LogInScreen()));
    });
  }

  static Route? onGenerateRoutes(RouteSettings settings) {
    return _loginScreenRoute();
  }
}
