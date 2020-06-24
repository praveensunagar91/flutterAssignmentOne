

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20.0),bottomRight: Radius.circular(20.0),topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                    image: DecorationImage(
                      image: AssetImage('images/back.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Positioned(

                  child: Container(
                     margin: EdgeInsets.only(top:10,left: 20.0,right: 20.0),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.arrow_back_ios,
                          color: Colors.grey,),
                        Icon(Icons.filter_vintage,color: Colors.white,)
                      ],
                    ),
                  )
                ),
                Positioned(
                  top:60.0,
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Row(
                      children: <Widget>[

                          Stack(
                            children: <Widget>[
                              ClipOval(

                                child: Image.asset('images/perry.jpg',
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.cover,),
                              ),
                             Positioned(
                               top:61,
                               child:  Container(
                                 margin: EdgeInsets.only(left: 18.0),
                                 padding: EdgeInsets.all(1),
                                 height: 20,
                                 width: 43,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20.0),
                                   color: Colors.white
                                 ),
                                 child: Text('13 |v|',
                                 style: TextStyle(
                                   color: Colors.purple,
                                   fontFamily: 'Mont',
                                 ),),

                                   
                               ),
                             )
                            ],
                          ),
                        SizedBox(width: 30.0,),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: 80,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Mia  Smith',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Mont',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 10,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on,
                                  color: Colors.white,
                                   size: 18,),
                                  SizedBox(width: 10,),
                                  Container(
                                    child: Text("Houston,",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Mont'
                                      ),),
                                  ),
                                  SizedBox(width: 5.0,),
                                  Container(
                                    child: Text('TX',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Mont',
                                      ),),
                                  )
                                ],
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ),
               Positioned(
                 top: 180,
                 child: Container(
                   margin: EdgeInsets.only(left: 15.0,right: 20.0),
                   child: Row(
                     children: <Widget>[
                       Container(
                         height: 150,
                         child: Column(
                           children: <Widget>[
                             Container(

                               child: Text('800',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontFamily: 'Mont',
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.bold
                               ),),
                             ),
                             SizedBox(height: 5.0,),
                             Container(
                               child: Text('total distance, mi',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontFamily: 'Mont',
                                 fontSize: 10.0,

                               ),),
                             )
                           ],
                         ),
                       ),
                       SizedBox(width: 60.0,),


                       Container(
                         height: 150,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Container(
                               child: Text('105k',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontFamily: 'Mont',
                                 fontSize: 20.0,
                                 fontWeight: FontWeight.bold
                               ),),
                             ),
                             SizedBox(height: 5.0,),
                             Container(
                               child: Text('total steps',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontFamily: 'Mont',
                                 fontSize: 10.0
                               ),),
                             )
                           ],
                         ),
                       ),
                       SizedBox(width: 60.0,),
                       Container(
                         height: 150,
                         child: Column(
                           children: <Widget>[
                             Container(
                               child: Text('3.8k',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontFamily: 'Mont',
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20.0
                               ),),
                             ),
                             SizedBox(height: 5.0,),
                             Container(
                               child: Text('total calories, kcal',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 10,
                                 fontFamily: 'Mont'
                               ),),
                             )
                           ],
                         ),
                       )
                     ],
                   ),
                 ),
               )
              ],
            ),

            ///second section

            SizedBox(height: 25.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  Text('Total activity',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Mont',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),),

                   DropdownButton<String>(
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return new DropdownMenuItem<String>(
                        
                        value: '',

                        child: new Text(value,
                            style: TextStyle(
                              color: Colors.black
                            ),),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],

              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Row(

                 children: <Widget>[
                   Text('Steps',
                       style: TextStyle(
                         color:Colors.purple,
                         fontFamily: 'Mont'
                       ),),
                   SizedBox(width: 15.0,),
                   Text('Calories',
                   style: TextStyle(
                     color:Colors.grey[400],
                     fontFamily: 'Mont',
                     fontWeight: FontWeight.bold
                   ),),
                   SizedBox(width: 15.0,),
                   Text('Distance',
                     style: TextStyle(
                         color:Colors.grey[400],
                         fontFamily: 'Mont',
                         fontWeight: FontWeight.bold
                     ),),

                 ],
              ),
            ),

            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.only(left: 225.0),
              padding: EdgeInsets.all(5),

              child: Row(

                children: <Widget>[
                  Container(
                    height: 20,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.purple,
                    ),
                    child: Text('7200',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Mont'
                      ),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                color: Colors.grey[300]
                              ),
                            ),
                            Positioned(
                              top: 80,
                              child: Container(
                                height: 200,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                    color: Colors.deepOrange[400]
                                ),
                              ),
                            )
                          ],
                        ),
                        Text('Sun',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Mont',
                          fontSize: 10,
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(width: 35.0,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                  color: Colors.grey[300]
                              ),
                            ),
                            Positioned(
                              top: 30,
                              child: Container(
                                height: 200,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                    color: Colors.deepOrange[400]
                                ),
                              ),
                            )
                          ],
                        ),
                        Text('Mon',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Mont',
                            fontSize: 10,
                          ),)
                      ],
                    ),
                  ),

                  SizedBox(width: 35.0,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                  color: Colors.grey[300]
                              ),
                            ),
                            Positioned(
                              top: 120,
                              child: Container(
                                height: 200,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                    color: Colors.deepOrange[400]
                                ),
                              ),
                            )
                          ],
                        ),
                        Text('Tue',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Mont',
                            fontSize: 10,
                          ),)
                      ],
                    ),
                  ),
                  SizedBox(width: 35.0,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                  color: Colors.grey[300]
                              ),
                            ),
                            Positioned(
                              top: 80,
                              child: Container(
                                height: 200,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                    color: Colors.deepOrange[400]
                                ),
                              ),
                            )
                          ],
                        ),
                        Text('Wed',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Mont',
                            fontSize: 10,
                          ),)
                      ],
                    ),
                  ),
                  SizedBox(width: 35.0,),

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                  color: Colors.grey[300]
                              ),
                            ),
                            Positioned(
                              top: 30,
                              child: Container(
                                height: 200,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                    color: Colors.purple
                                ),
                              ),
                            )
                          ],
                        ),
                        Text('Thu',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Mont',
                            fontSize: 10,
                          ),)
                      ],
                    ),
                  ),

                  SizedBox(width: 35.0,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                  color: Colors.grey[300]
                              ),
                            ),
                            Positioned(
                              top: 100,
                              child: Container(
                                height: 200,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                    color: Colors.deepOrange[400]
                                ),
                              ),
                            )
                          ],
                        ),
                        Text('Fri',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Mont',
                            fontSize: 10,
                          ),)
                      ],
                    ),
                  ),

                  SizedBox(width: 38.0,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                  color: Colors.grey[300]
                              ),
                            ),
                            Positioned(
                              top: 80,
                              child: Container(
                                height: 200,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                    color: Colors.deepOrange[400]
                                ),
                              ),
                            )
                          ],
                        ),
                        Text('Sat',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Mont',
                            fontSize: 10,
                          ),)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///third section

            SizedBox(height:10.0),

            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('My goals',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),),

                  DropdownButton<String>(
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return new DropdownMenuItem<String>(

                        value: '',

                        child: new Text(value,
                          style: TextStyle(
                              color: Colors.black
                          ),),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Row(

                children: <Widget>[
                  Text('Running',
                    style: TextStyle(
                        color: Colors.purple,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0
                    ),),
                  SizedBox(width: 250.0,),
                  Text('30',
                    style: TextStyle(
                        color: Colors.purple,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0
                    ),),
                  Text('/180 min',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0
                    ),),
                ],
              ),
            ),

            SizedBox(height: 8.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0),bottomLeft: Radius.circular(5.0))
                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 10,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],

                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 20,
                        child: Container(
                          height: 10,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),bottomRight: Radius.circular(5.0))
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),bottomRight: Radius.circular(5.0))
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(left:20.0,right:20.0),
              child: Row(
                children: <Widget>[
                  Text('Pilates',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0
                    ),),
                  SizedBox(width: 260.0,),
                  Text('60',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0
                    ),),
                  Text('/120 min',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0
                    ),),
                ],
              ),
            ),
            SizedBox(height: 8.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0),bottomLeft: Radius.circular(5.0))
                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),bottomRight: Radius.circular(5.0))
                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),bottomRight: Radius.circular(5.0))
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(left:20.0,right:20.0),
              child: Row(
                children: <Widget>[
                  Text('Yoga',
                    style: TextStyle(
                        color: Colors.deepPurple[800],
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0
                    ),),
                  SizedBox(width: 265.0,),
                  Text('90',
                    style: TextStyle(
                        color: Colors.deepPurple[800],
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0
                    ),),
                  Text('/120 min',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontFamily: 'Mont',
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0
                    ),),
                ],
              ),
            ),
            SizedBox(height: 8.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0,right: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[800],
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0),bottomLeft: Radius.circular(5.0))
                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[800],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[800],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[800],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[800],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[800],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 10,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],

                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 20,
                        child: Container(
                          height: 10,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple[800],
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),bottomRight: Radius.circular(5.0))
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],

                    ),
                  ),
                  SizedBox(width: 1.0,),
                  Container(
                    height: 10,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(5.0),bottomRight: Radius.circular(5.0))
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
