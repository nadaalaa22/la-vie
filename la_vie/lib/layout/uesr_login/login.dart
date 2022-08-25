import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:la_vie/modules/login/loginScreen.dart';

import '../../modules/signup/cubit/cubit.dart';
import '../../modules/signup/cubit/states.dart';
import '../../modules/signup/signUpScreen.dart';

class MainLogin extends StatelessWidget {
  const MainLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginStates>(
          listener: (BuildContext context, state) {},
          builder: (BuildContext context, Object? state) {
            return DefaultTabController(
              initialIndex: 1,
              length: 2,
              child: Scaffold(
                body: Stack(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.topEnd,
                      child: SafeArea(
                        child: SvgPicture.asset(
                          "assets/images/login_background.svg",
                          fit: BoxFit.fill,
                          width: 280,
                          height: 130,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          top: 140, start: 40, end: 40, bottom: 50),
                      child: Form(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 150,
                                height: 40,
                                child:
                                    SvgPicture.asset("assets/images/la_via logo.svg")),
                            const SizedBox(
                              height: 35,
                            ),
                            TabBar(
                              unselectedLabelColor: HexColor("#8A8A8A"),
                              unselectedLabelStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              labelColor: HexColor("#1ABC00"),
                              labelStyle: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                              indicatorColor: HexColor("#1ABC00"),
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorWeight: 2,
                              indicatorPadding:
                                  EdgeInsets.symmetric(horizontal: 0),
                              tabs: const [
                                Tab(
                                  text: "Sign Up",
                                ),
                                Tab(text: "Login")
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Expanded(
                              child:  TabBarView(

                                  children: [SignUpScreen(), LoginScreen()]
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.bottomStart,
                      child: SafeArea(
                        child: SvgPicture.asset(
                          "assets/images/end.svg",
                          fit: BoxFit.fill,
                          width: 280,
                          height: 130,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        ));
  }
}
