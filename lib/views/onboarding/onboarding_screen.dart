import 'package:fitme/bloc/onboard/onboard_cubit.dart';
import 'package:fitme/routes/routes.dart';
import 'package:fitme/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardCubit>(
      create: (context) => OnboardCubit(),
      child: Scaffold(
          body: SafeArea(
        child: BlocConsumer<OnboardCubit, OnboardState>(
          listener: (context, state) {
            if (state is OnboardComplete) {
              Navigator.pushReplacementNamed(context, Routes.dashboard);
            }
          },
          buildWhen: (pState, cState) {
            return pState != cState;
          },
          builder: (context, state) => PageView.builder(
            controller: context.read<OnboardCubit>().pageController,
            itemCount: context.read<OnboardCubit>().pageList.length,
            itemBuilder: (context, index) =>
                _onBoardPage(context, state is OnboardLastPage),
            onPageChanged: context.read<OnboardCubit>().pageChange,
          ),
        ),
      )),
    );
  }
}

Widget _onBoardPage(BuildContext context, bool isLast) => Column(
      children: [
        const SizedBox(height: 32),
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              color: AppColors.purple, borderRadius: BorderRadius.circular(32)),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 70,
                  child: isLast
                      ? null
                      : TextButton(
                          onPressed: context.read<OnboardCubit>().skip,
                          child: const Text(
                            "Skip>>",
                            style: TextStyle(color: Colors.white),
                          ))),
              GestureDetector(
                onTap: () {
                  context.read<OnboardCubit>().nextPage();
                },
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: const BoxDecoration(
                      color: AppColors.purple, shape: BoxShape.circle),
                  child: Icon(
                    isLast ? Icons.check : Icons.arrow_forward_ios,
                    size: 32,
                  ),
                ),
              ),
              const SizedBox(width: 70),
            ],
          ),
        ),
      ],
    );
