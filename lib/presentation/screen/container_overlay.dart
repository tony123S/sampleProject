import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../cubit/overlay_loading_cubit.dart';

class ContainerOverlay extends HookWidget {
  final Widget child;

  const ContainerOverlay({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("This is your OverlayLoadingCubit hascode ${context.read<OverlayLoadingCubit>().hashCode}");
    return BlocListener<OverlayLoadingCubit, OverlayLoadingState>(
      listener: (context, state) {
        debugPrint("call from listener");
        if (state is OverlayLoadingInitial) {
          context.loaderOverlay.hide();
        }

        if (state is IsLoadingState) {
          context.loaderOverlay.show();
        }
      },
      child: LoaderOverlay(
        useDefaultLoading: false,
        overlayWidget: const Center(child: CircularProgressIndicator()),
        child: child,
      ),
    );
  }
}
