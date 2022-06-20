import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fitme/bloc/dashboard/dashboard_cubit.dart';
import 'package:fitme/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardCubit>(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
        return Scaffold(
          body: context.read<DashboardCubit>().currentPage,
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: AppColors.purple,
            activeColor: AppColors.magenta,
            onTap: context.read<DashboardCubit>().onNavItemTab,
            height: 60,
            initialActiveIndex: context.read<DashboardCubit>().currentIndex,
            items: context.read<DashboardCubit>().bottomBarItems,
          ),
        );
      }),
    );
  }
}
