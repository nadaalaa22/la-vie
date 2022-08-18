import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/componants/componants.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<LoginScreen> {
  var emailcontrol = TextEditingController();

  var passwordcontrol = TextEditingController();

  var FormKey = GlobalKey<FormState>();

  var ispassword =true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
          unselectedLabelColor: Colors.green,
          labelColor: Colors.green,
        indicatorColor: Colors.red,
        labelPadding: EdgeInsets.all(10),
        tabs: [
          Text("Login" , style: TextStyle(fontSize: 22),),
          Text("Sign up" , style: TextStyle(fontSize: 22),),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: FormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/Top.png',
                      height: 100,
                      width: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo.png',
                          height: 100,
                          width: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey[500],
                                ),

                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              defaultFormField(
                                controller: emailcontrol,
                                type: TextInputType.emailAddress,
                                validate: (value)
                                {
                                  if (value == null || value.trim() == '' )
                                  {
                                    return 'email must not be empty';
                                  }

                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                'Password',
                                style: TextStyle(
                                  color:Colors.grey[500],
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              defaultFormField(
                                controller: passwordcontrol,
                                type: TextInputType.visiblePassword,
                                validate: (value){
                                  if (value == null || value.trim() == '' )
                                  {
                                    return 'password must not be empty';
                                  }

                                  return null;
                                },
                                obscureText: ispassword ,
                              ),

                              SizedBox(
                                height: 30.0,
                              ),
                              defaultbutton(
                                function: (){
                                  if (FormKey.currentState!.validate()){
                                    print(emailcontrol.text);
                                    print(passwordcontrol.text);
                                  }
                                },
                                text: 'Login',
                                radius: 10.0,
                                isUpperCase: false,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              const Divider(
                                color: Colors.grey,
                                height: 25,
                                thickness: 2,
                                indent: 5,
                                endIndent: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Divider(
                                    color: Colors.grey,
                                    height: 25,
                                    thickness: 2,
                                    indent: 5,
                                    endIndent: 5,
                                  ),
                                  Text(
                                    'or continue with',
                                    style: TextStyle(color: Colors.grey[500]),
                                  ),
                                  const Divider(
                                    color: Colors.grey,
                                    height: 25,
                                    thickness: 2,
                                    indent: 5,
                                    endIndent: 5,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(onPressed: (){},
                                      icon: Image.asset('assets/images/Google.png',
                                        height:50,
                                        width: 50,
                                  ),
                                  ),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Image.asset('assets/images/Facebook.png',
                                      height:50,
                                      width: 50,
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/bottom.png',
                      height: 60,
                      width: 60,
                      fit: BoxFit.fitHeight,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}