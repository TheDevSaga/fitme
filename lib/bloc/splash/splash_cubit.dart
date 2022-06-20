import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  start() {
    Future.delayed(const Duration(seconds: 3), () => emit(SplashDone()));
  }
}
