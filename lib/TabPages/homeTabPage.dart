import 'dart:async';

import 'package:easycare/Search/search_field.dart';
import 'package:easycare/Splash/splash_screen.dart';
import 'package:easycare/TabPages/AddPropertyTabPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';


class HomeTabPage extends StatefulWidget {
  const HomeTabPage({Key? key}) : super(key: key);

  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
int _counter=0;
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

//final SharedPreferences shared =  SharedPreferences.getInstance() as SharedPreferences;



  List _products = [];
  var first_name = "First Name";
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(

              child: Padding(
                padding: const EdgeInsets.only(top:30.0,left: 10,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    SearchField(),
                    Padding(
                      padding: const EdgeInsets.only(top:20,left: 200),
                      child: Text("Welcome",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      child: Divider(
                        indent: 75,
                        endIndent: 10,
                        color: Colors.red.withOpacity(0.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Text(
                          "$finalName",


                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red,fontStyle: FontStyle.italic),),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap:()=>Navigator.push((context), MaterialPageRoute(builder: (contetx)=>AddPropertyTabPage())),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:20,left: 10),
                                    child: Text("Customer Order"
                                    , style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(22),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade500,
                                        offset: Offset(-4,-4),
                                        spreadRadius: 1,
                                        blurRadius: 10,

                                      ),
                                    ],
                                  ),

                                ),
                              ),
                                   SizedBox(width: 30,),


                                      Badge(
                                       badgeContent: Text(
                                           "$_counter"
                                           ),
                                       child: Container(
                                         height: 75,
                                         width: 75,
                                         child: Padding(
                                           padding: const EdgeInsets.only(top:15,left: 10),
                                           child: Text("Customer Order Verified"
                                             , style: TextStyle(fontWeight: FontWeight.bold),
                                           ),
                                         ),
                                         decoration: BoxDecoration(
                                           color: Colors.grey.shade300,
                                           borderRadius: BorderRadius.circular(22),
                                           boxShadow: [
                                             BoxShadow(
                                                 color: Colors.grey.shade500,
                                                 offset: Offset(-4,-4),
                                                 spreadRadius: 1,
                                               blurRadius: 10,

                                             ),
                                           ],
                                         ),

                                       ),

                                     ),


                              SizedBox(width: 30,),
                              Badge(
                                badgeContent: Text(
                                    "$_counter"
                                ),
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:20,left: 10),
                                    child: Text("Pending Order"
                                      , style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(22),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade500,
                                        offset: Offset(-4,-4),
                                        spreadRadius: 1,
                                        blurRadius: 10,

                                      ),
                                    ],
                                  ),

                                ),
                              ),
                            ],

                          ),
                          SizedBox(height: 25,),
                          Row(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: const EdgeInsets.only(top:20,left: 10),
                                  child: Text("Xyz"
                                    , style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(22),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade500,
                                      offset: Offset(-4,-4),
                                      spreadRadius: 1,
                                      blurRadius: 10,

                                    ),
                                  ],
                                ),

                              ),
                              SizedBox(width: 30,),
                              Container(
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: const EdgeInsets.only(top:20,left: 10),
                                  child: Text("ABC"
                                    , style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(22),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade500,
                                      offset: Offset(-4,-4),
                                      spreadRadius: 1,
                                      blurRadius: 10,

                                    ),
                                  ],
                                ),

                              ),
                              SizedBox(width: 30,),
                              Container(
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: const EdgeInsets.only(top:20,left: 10),
                                  child: Text("xYZ"
                                    , style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(22),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade500,
                                      offset: Offset(-4,-4),
                                      spreadRadius: 1,
                                      blurRadius: 10,

                                    ),
                                  ],
                                ),

                              ),
                            ],

                          ),

                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(.0),
                        child: Table(
                          columnWidths: {
                            0 : FlexColumnWidth(3),
                            1 : FlexColumnWidth(1),
                          },
                          border: TableBorder(horizontalInside: BorderSide(width: 1,color: Colors.grey.withOpacity(0.5),style: BorderStyle.solid,)
                          ),
                          children: [
                            TableRow(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                children :[

                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Verified Order',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('2',style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),


                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                children :[

                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Pending Orders',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('5',style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),


                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                children :[

                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Verified Order',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('2',style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),


                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                children :[

                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Pending Orders',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('5',style: TextStyle(fontWeight: FontWeight.bold)),
                                  ),


                                ]),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade500,
                            offset: Offset(-4,-4),
                            spreadRadius: 1,
                            blurRadius: 10,

                          ),
                        ],
                      ),

                    ),
                  ],

                ),

              ),

            ),

          ),
        

    );
  }
}
