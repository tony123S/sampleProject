part of 'overlay_loading_cubit.dart';

abstract class OverlayLoadingState {
  const OverlayLoadingState();
}

class OverlayLoadingInitial extends OverlayLoadingState {}

class IsLoadingState extends OverlayLoadingState {}
