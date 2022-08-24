import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';
import '../../shared/styles/color.dart';

class HomeLayout  extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      ImageIcon(
        AssetImage("assets/images/leave.png"),
        size: 30,
      ),

      ImageIcon(
        AssetImage("assets/images/scanner.png"),
        size: 30,
      ),
      ImageIcon(
        AssetImage("assets/images/Rectangle 74.png"),

        //color: Colors.white,
        size: 30,
      ),
      ImageIcon(
        AssetImage("assets/images/Union.png"),
        size: 30,
      ),
      ImageIcon(
        AssetImage("assets/images/profile.png"),
        size: 30,
      ),

    ];
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            AppCubit cubit = AppCubit.get(context);
            return Scaffold(

              body: cubit.screen[cubit.currentIndex],
              bottomNavigationBar: CurvedNavigationBar(
                animationCurve: Curves.easeInOut,
                animationDuration: Duration(milliseconds: 200),
                buttonBackgroundColor: color1,
                backgroundColor: Colors.transparent,
                height: 60,
                index: cubit.currentIndex,
                items: items,

                onTap: (index) {
                  cubit.changeIndex(index);


                },


              ),
            );
          }
      ),
    );
  }

  }

