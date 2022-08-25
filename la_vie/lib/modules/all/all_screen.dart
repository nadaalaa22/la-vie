import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:la_vie/shared/componants/componants.dart';

class AllScreen  extends StatefulWidget {
  const AllScreen({Key? key}) : super(key: key);

  @override
  State<AllScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(


                      child: Column(
                        children: [
                          // Expanded(
                          //  // flex: 1,
                          //   child: Container(
                          //   ),
                          // ),
                          Expanded(
                            flex: 4,
                            child: Card(

                              elevation: 5,
                              child: Container(

                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        child:               Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Image(
                                                image: AssetImage('assets/images/Background - 2022-08-09T145931 3.png')
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {

                                                });
                                              },
                                              child: Container(
                                                color: Colors.white,
                                                padding: EdgeInsets.all(8),
                                                child: Text('-'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 8.0),
                                              child: Text('1'),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {

                                                });
                                              },
                                              child: Container(
                                                color: Colors.white,
                                                padding: EdgeInsets.all(8),
                                                child: Text('+'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('GARDENIA PLANT'),
                                            Text('70 EGP'),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                           Container(
                                             width: 30.0,
                                             height: 20.0,
                                             decoration: BoxDecoration(
                                               borderRadius: BorderRadius.circular(10.0),
                                               color: HexColor("#1ABC00"),
                                             ),
                                             child: MaterialButton(

                                                 onPressed: (){},
                                               child: Text(
                                                 'Add to card',
                                                 style: TextStyle(
                                                   color: Colors.white
                                                 ),

                                               ),
                                             ),
                                           ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Positioned(
                    //   left: 0,
                    //   child: Image.asset(
                    //     'assets/images/Background - 2022-08-09T145931 3.png',),
                    // ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(


                      child: Column(
                        children: [

                          Expanded(
                            flex: 4,
                            child: Card(
                              elevation: 5,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        child:               Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Image(
                                                image: AssetImage('assets/images/Lovepik_com-401306819-plant-pot.png')
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {

                                                });
                                              },
                                              child: Container(
                                                color: Colors.white,
                                                padding: EdgeInsets.all(8),
                                                child: Text('-'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 8.0),
                                              child: Text('1'),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {

                                                });
                                              },
                                              child: Container(
                                                color: Colors.white,
                                                padding: EdgeInsets.all(8),
                                                child: Text('+'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('GARDENIA PLANT'),
                                            Text('70 EGP'),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Container(
                                              width: 30.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.0),
                                                color: HexColor("#1ABC00"),
                                              ),
                                              child: MaterialButton(

                                                onPressed: (){},
                                                child: Text(
                                                  'Add to card',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),

                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(


                      child: Column(
                        children: [

                          Expanded(
                            flex: 4,
                            child: Card(
                              elevation: 5,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        child:               Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Image(
                                                image: AssetImage('assets/images/Lovepik_com-401501120-cute-indoor-plants-illustration-image.png')
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {

                                                });
                                              },
                                              child: Container(
                                                color: Colors.white,
                                                padding: EdgeInsets.all(8),
                                                child: Text('-'),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 8.0),
                                              child: Text('1'),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {

                                                });
                                              },
                                              child: Container(
                                                color: Colors.white,
                                                padding: EdgeInsets.all(8),
                                                child: Text('+'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('GARDENIA PLANT'),
                                            Text('70 EGP'),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Container(
                                              width: 30.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.0),
                                                color: HexColor("#1ABC00"),
                                              ),
                                              child: MaterialButton(

                                                onPressed: (){},
                                                child: Text(
                                                  'Add to card',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),

                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(


                      child: Column(
                        children: [

                          Expanded(
                            flex: 4,
                            child: Card(
                              elevation: 5,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        child:               Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Image(
                                                image: AssetImage('assets/images/Lovepik_com-401568628-decorative-potted-plant-element-png.png')
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {

                                                });
                                              },
                                              child: Container(
                                                color: Colors.white,
                                                padding: EdgeInsets.all(8),
                                                child: Text('-',
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 8.0),
                                              child: Text('1'),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {

                                                });
                                              },
                                              child: Container(
                                                color: Colors.white,
                                                padding: EdgeInsets.all(8),
                                                child: Text('+'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.stretch,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text('GARDENIA PLANT'),
                                            Text('70 EGP'),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Container(
                                              width: 30.0,
                                              height: 20.0,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.0),
                                                color: HexColor("#1ABC00"),
                                              ),
                                              child: MaterialButton(

                                                onPressed: (){},
                                                child: Text(
                                                  'Add to card',
                                                  style: TextStyle(
                                                      color: Colors.white
                                                  ),

                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    )
    ;
  }
}
