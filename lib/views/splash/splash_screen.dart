import 'package:fitme/bloc/splash/splash_cubit.dart';
import 'package:fitme/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => SplashCubit()..start(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashDone) {
            Navigator.pushNamed(context, Routes.onboard);
          }
        },
        child: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: const Text("FitMe"),
          ),
        ),
      ),
    );
  }
}
