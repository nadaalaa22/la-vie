import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:la_vie/modules/all/all_screen.dart';
import 'package:la_vie/modules/login/loginScreen.dart';
import 'package:la_vie/modules/plants/plants_screen.dart';
import 'package:la_vie/modules/seeds/seeds_screen.dart';
import 'package:la_vie/modules/tool/tool_screen.dart';

import '../../modules/signup/cubit/cubit.dart';
import '../../modules/signup/cubit/states.dart';
import '../../modules/signup/signUpScreen.dart';
import '../../shared/componants/componants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginStates>(
          listener: (BuildContext context, state) {},
          builder: (BuildContext context, Object? state) {
            var searchController = TextEditingController();
            return DefaultTabController(
              initialIndex: 0,
              length: 4,
              child: Scaffold(
                body: Stack(
                  children: [

                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          top: 70, start: 10, end: 10, bottom: 50),
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

                            Row(
                              children: [
                                Expanded (
                                  flex : 4,
                                  child: defaultFormField(

                                  label: "search",
                                  controller: searchController,

                                  validate: (value) {

                                  }, type: TextInputType.text,
                                  prefix: Icons.search,

                                    ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Container(

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        30.0,

                                      ),
                                      color: HexColor("#1ABC00"),
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon:  SvgPicture.asset("assets/images/Cart.svg",

                                        ),

                                    ),
                                  ),
                                ),
                              ],
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
                                  text: "All",
                                ),
                                Tab(
                                    text: "Plants"),
                                Tab(
                                  text: "Seeds",
                                ),
                                Tab(
                                  text: "Tools",
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Expanded(
                              child:  TabBarView(

                                  children: [
                                    AllScreen(),
                                    PlantsScreen(),
                                    SeedsScreen(),
                                    ToolsScreen(),

                                  ]
                              ),
                            )
                          ],
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
