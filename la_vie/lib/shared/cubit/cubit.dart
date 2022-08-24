import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/modules/home/home_screen.dart';
import 'package:la_vie/modules/notification/notification_screen.dart';
import 'package:la_vie/modules/profile/profile_screen.dart';
import 'package:la_vie/modules/scan/scan_screen.dart';
import 'package:la_vie/shared/cubit/states.dart';

import '../../modules/leave/leave_screen.dart';

class AppCubit extends Cubit<AppStates > {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 2;
  List<String> todo = ['New Tasks', 'Done Tasks', 'Archived Tasks'];

  List<Widget> screen = [
    LeaveScreen(),
    ScanScreen(),
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  void changeIndex (int index)
  {
    currentIndex = index;
    emit(AppChangeNavBotton());
  }
}
