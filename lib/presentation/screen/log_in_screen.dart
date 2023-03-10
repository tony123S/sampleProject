import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../cubit/log_in_cubit.dart';
import 'container_overlay.dart';

class LogInScreen extends HookWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerOverlay(child: _showBody(context)),
      appBar: AppBar(title: const Text("Sample Project")),
    );
  }

  Widget _showBody(BuildContext context) {
    return Center(
        child: InkWell(
      onTap: () {
        context.read<LogInCubit>().signIn();
      },
      child: const Text("Click this to show loading"),
    ));
  }
}
