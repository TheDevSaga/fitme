import 'package:bloc/bloc.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fitme/views/home/home_screen.dart';
import 'package:fitme/views/progress/progress_screen.dart';
import 'package:fitme/views/reminder/reminder_screen.dart';
import 'package:fitme/views/settings/settings_screen.dart';
import 'package:flutter/material.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial());
  int currentIndex = 0;
  final List<TabItem> bottomBarItems = const [
    TabItem(icon: Icon(Icons.home), title: "Home"),
    TabItem(icon: Icon(Icons.bar_chart), title: "Progress"),
    TabItem(icon: Icon(Icons.alarm), title: "Reminders"),
    TabItem(icon: Icon(Icons.settings), title: "Settings"),
  ];
  onNavItemTab(int index) {
    currentIndex = index;
    emit(DashBoardNav());
  }

  final List<Widget> _pages = const [
    HomeScreen(),
    ProgressScreen(),
    ReminderScreen(),
    SettingsScreen()
  ];
  Widget get currentPage => _pages[currentIndex];
}
