import 'package:flutter_bloc/flutter_bloc.dart';

import 'overlay_loading_cubit.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  final OverlayLoadingCubit _loadingCubit;

  LogInCubit(this._loadingCubit) : super(LogInLoading());

  Future<void> signIn() async {
    _loadingCubit.startLoading();
  }
}
