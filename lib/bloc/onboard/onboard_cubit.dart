import 'package:fitme/data/models/onboard_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit() : super(OnboardInitial());
  final PageController pageController = PageController();
  final List<OnBoardPageModel> pageList = [
    OnBoardPageModel("", ""),
    OnBoardPageModel("", ""),
    OnBoardPageModel("", ""),
    OnBoardPageModel("", ""),
  ];
  pageChange(int i) {
    if (i == pageList.length - 1) {
      emit(OnboardLastPage());
    } else {
      emit(OnboardInitial());
    }
  }

  nextPage() {
    if (state is OnboardInitial) {
      pageController.nextPage(
          duration: const Duration(seconds: 1),
          curve: Curves.fastLinearToSlowEaseIn);
    } else {
      emit(OnboardComplete());
    }
  }

  @override
  Future<void> close() async {
    pageController.dispose();
    super.close();
  }

  void skip() {
    pageController.jumpToPage(pageList.length - 1);
  }
}
