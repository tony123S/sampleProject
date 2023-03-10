part of 'log_in_cubit.dart';

abstract class LogInState {
  const LogInState();
}

class LogInLoading extends LogInState {}

class SplashUnauthenticated extends LogInState {}
