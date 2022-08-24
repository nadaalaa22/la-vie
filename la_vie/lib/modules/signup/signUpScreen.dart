import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:la_vie/shared/componants/componants.dart';

import 'cubit/cubit.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstNameController = TextEditingController();
    var lastNameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: defaultFormField(
                    label: "First Name",
                    controller: firstNameController,

                    validate: (value) {
                      if (value!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    }, type: TextInputType.name,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: defaultFormField(
                    label: "Last Name",
                    controller: lastNameController,

                    validate: (value) {
                      if (value!.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    }, type: TextInputType.name,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            defaultFormField(
              label: "Email",
              controller: emailController,
              validate: (value) {
                if (value!.isEmpty) {
                  return "This field is required";
                }
                return null;
              }, type: TextInputType.emailAddress
            ),
            const SizedBox(
              height: 30,
            ),
            defaultFormField(
              label : "Password",
              controller: passwordController,
              validate: (value) {
                if (value!.isEmpty) {
                  return "This field is required";
                }
                return null;
              },
               type: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 30,
            ),
            defaultFormField(
              label: "Confirm password",
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
            defaultbutton(
                text: "Login",
                 function: () {

              if (formKey.currentState!.validate()) {
                LoginCubit.get(context).userLogin(
                    email: emailController.text,
                    password: passwordController.text);
                // navigateTo(context, HomeLayoutScreen());
              }
            },

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
  }
}
