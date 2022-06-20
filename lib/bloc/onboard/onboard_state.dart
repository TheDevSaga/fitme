part of 'onboard_cubit.dart';

abstract class OnboardState {
  int pageIndex = 0;
}

class OnboardInitial extends OnboardState {}

class OnboardLastPage extends OnboardState {}

class OnboardComplete extends OnboardState {}
