import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'overlay_loading_state.dart';

class OverlayLoadingCubit extends Cubit<OverlayLoadingState> {
  OverlayLoadingCubit() : super(IsLoadingState());
  startLoading() {
    debugPrint("call loading");
    emit(IsLoadingState());
    return;
  }

  void stopLoading() {
    emit(OverlayLoadingInitial());
  }
}
