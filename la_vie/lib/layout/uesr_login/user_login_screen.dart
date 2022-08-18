import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLoginScreen  extends StatefulWidget {
  const UserLoginScreen({Key? key}) : super(key: key);

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
mainAxisSize: MainAxisSize.max,

        children: [
          Container(
            alignment: AlignmentDirectional.centerEnd,
            child: Image.asset('assets/images/Top.png'),

            width: double.infinity,

          ),
         Container(
            alignment: AlignmentDirectional.center,
            child: Image.asset('assets/images/smalllogo.png',
             width: double.infinity,
            ),
          ),
          SizedBox(height: 20.0),
          Text('Tabs Inside Body', textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
          DefaultTabController(
              length: 4, // length of tabs
              initialIndex: 0,
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                Container(
                  child: TabBar(
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Login'),
                      Tab(text: 'Tab 2'),
                      Tab(text: 'Tab 3'),
                      Tab(text: 'Tab 4'),
                    ],
                  ),
                ),
                Container(
                    height: 400, //height of TabBarView
                    decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                    ),
                    child: TabBarView(children: <Widget>[
                      Container(
                        child: Center(
                          child: Text('Display Tab 1', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('Display Tab 3', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('Display Tab 4', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ])
                )
              ])
          ),


          // Container(
          //
          //   alignment: AlignmentDirectional.bottomStart,
          //   child: Image(
          //     image: AssetImage('assets/images/bottom.png'),
          //   ),
          //   width: double.infinity,
          // ),
        ],
      ),
    ) ;
  }
}
