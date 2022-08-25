import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie/modules/home/home_screen.dart';
import 'package:la_vie/shared/bloc_observer.dart';
import 'package:la_vie/shared/cubit/cubit.dart';
import 'package:la_vie/shared/cubit/states.dart';

import 'layout/home_layout/home_layout.dart';
import 'layout/uesr_login/login.dart';

import 'modules/login/login_screen.dart';
import 'modules/splash/splash_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());

      runApp(MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => AppCubit()),
      ],
      child: BlocConsumer < AppCubit , AppStates>(
        listener: (context , state) {} ,
        builder: (context , state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeLayout(),


          )  ;},
      ),
    );
  }
}
