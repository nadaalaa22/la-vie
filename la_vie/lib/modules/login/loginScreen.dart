import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:la_vie/shared/componants/componants.dart';

import '../signup/cubit/cubit.dart';
import '../signup/cubit/states.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginStates>(
          listener: (BuildContext context, state) {},
          builder: (BuildContext context, Object? state) {
            var emailController = TextEditingController();
            var passwordController = TextEditingController();
            var formKey = GlobalKey<FormState>();
            return SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    defaultFormField(
                      label: "Email",
                      controller: emailController,

                      validate: (value) {
                        if (value!.isEmpty) {
                          return "This field is required";
                        }
                        return null;
                      }, type: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    defaultFormField(
                      label: "Password",
                      controller: passwordController,

                      validate: (value) {
                        if (value!.isEmpty) {
                          return "This field is required";
                        }
                        return null;
                      }, type: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ConditionalBuilder(
                      condition: state is! LoginLoadingState,
                      builder: (BuildContext context) {
                        return defaultbutton(
                            text: "Login",
                           function: () {

                          if (formKey.currentState!.validate()) {
                            LoginCubit.get(context).userLogin(
                                email: emailController.text,
                                password: passwordController.text);
                            // navigateTo(context, HomeLayoutScreen());
                          }
                        }

                            );
                      },
                      fallback: (BuildContext context) =>
                          CircularProgressIndicator(
                        color: HexColor("#1ABC00"),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              endIndent: 10,
                              color: HexColor("#979797"),
                            ),
                          ),
                          const Text(
                            "Or continue with",
                            style: TextStyle(fontSize: 12),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              endIndent: 10,
                              color: HexColor("#979797"),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset("assets/images/Google.svg"),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset("assets/images/Facebook.svg"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
