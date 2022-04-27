import 'dart:convert';

import 'package:easycare/Add%20Products/add_products.dart';
import 'package:easycare/Signup/signup_screen.dart';
import 'package:easycare/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class AddPropertyTabPage extends StatefulWidget {
  const AddPropertyTabPage({Key? key}) : super(key: key);

  @override
  _AddPropertyTabPageState createState() => _AddPropertyTabPageState();
}

class _AddPropertyTabPageState extends State<AddPropertyTabPage> {

  TextEditingController customernamecontroller= TextEditingController();
  TextEditingController productnamecontroller= TextEditingController();
  TextEditingController qtycontroller= TextEditingController();
  TextEditingController pricecontroller= TextEditingController();
  TextEditingController remarkscontroller= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical:25 , horizontal: 5),
                  decoration: BoxDecoration(
                    boxShadow:const [
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: -5,
                        blurRadius: 17,
                        offset: Offset(0, 3),
                      )
                    ],
                    border: Border.all(width: 0.5, color: Colors.white),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18.0),
                    ),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blueAccent,
                        Color.fromARGB(30,50, 40, 170),
                      ],
                    ),
                  ),

                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 30,left: 0,right: 10),
                        child: const Text("Welcome ! ",
                          style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white

                          ),
                        ),
                      ),


                      SizedBox(height: 10,),



                      Container (
                        child:const  Text("Add the product",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,


                          ),
                        ),

                      ),
                      SizedBox(height: 60,),


                      Container(
                        padding: EdgeInsets.only(left: 15,right: 30),
                        child: TextField(

                            controller: customernamecontroller,
                            keyboardType: TextInputType.text,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red.withOpacity(0.7)),
                              ),

                              icon:  GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                                },
                                child: Icon(Icons.add, color: Color(
                                  0xffaf3030,)),
                              ),

                              hintText: "Customers name",

                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),


                            )),




                      ),
                      SizedBox(height: 5,),


                      Container(
                        padding: EdgeInsets.only(left: 15,right: 30),
                        child: TextField(

                            controller: productnamecontroller,
                            keyboardType: TextInputType.text,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            decoration:const InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red,)
                              ),


                              hintText: "Enter the name of Product",



                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),


                            )),
                      ),
                      SizedBox(height: 5,),

                      Container(
                        padding: EdgeInsets.only(left: 15,right: 30),
                        child: TextField(
                            controller: qtycontroller,
                            keyboardType: TextInputType.number,


                            style:const  TextStyle(
                              color: Colors.white,
                            ),
                            decoration:const InputDecoration(

                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)
                              ),
                              hintText: "Enter the quantity",

                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),


                            )),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        padding: EdgeInsets.only(left: 15,right: 30),
                        child: TextField(
                            controller: pricecontroller,
                            keyboardType: TextInputType.number,


                            style:const  TextStyle(
                              color: Colors.white,
                            ),
                            decoration:const InputDecoration(

                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)
                              ),
                              hintText: "Enter the Sales Price",

                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        padding: EdgeInsets.only(left: 15,right: 30),
                        child: TextField(
                            controller: remarkscontroller,
                            keyboardType: TextInputType.text,


                            style:const  TextStyle(
                              color: Colors.white,
                            ),
                            decoration:const InputDecoration(

                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red)
                              ),
                              hintText: "Write the remarks",

                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )),
                      ),
                      SizedBox(height: 15,),


                      Container(
                        padding: EdgeInsets.only(left:120,right: 120),
                        child: ElevatedButton(onPressed: (){
                          createproduct();
                        },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red.withOpacity(0.7),
                              minimumSize: const Size.fromHeight(45),
                              maximumSize: const Size.fromHeight(50),

                            ),
                            child: Text("Add",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),

                            )),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.only(left: 10,right:10),

                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Table(
                                  columnWidths: {
                                    0 : FlexColumnWidth(3),
                                    1 : FlexColumnWidth(1),
                                    2 : FlexColumnWidth(1),
                                    3 : FlexColumnWidth(1.5),

                                  },

                                    border: TableBorder(horizontalInside: BorderSide(width: 1,color: Colors.grey.withOpacity(0.5),style: BorderStyle.solid)
                                    ),
                                    children:const [
                                      TableRow(
                                          decoration: BoxDecoration(
                                            color: Colors.grey,
                                          ),
                                          children :[

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('Product Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('Qty',style: TextStyle(fontWeight: FontWeight.bold)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('Price',style: TextStyle(fontWeight: FontWeight.bold)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('Subtotal',style: TextStyle(fontWeight: FontWeight.bold)),
                                        ),

                                      ]),
                                      TableRow(children :[

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('bhjkhljhkj',),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('2'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('3'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('43'),
                                        )
                                      ]),TableRow(children :[

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('bhjkhljhkj',),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('2'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('3'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('43'),
                                        )
                                      ]),TableRow(children :[

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('bhjkhljhkj',),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('2'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('3'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('43'),
                                        )
                                      ]),TableRow(children :[

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('bhjkhljhkj',),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('2'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('3'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('43'),
                                        )
                                      ]),
                                      TableRow(children :[

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('bhjkhljhkj',),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('2'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('3'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('43'),
                                        )
                                      ]),TableRow(children :[

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('bhjkhljhkj',),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('2'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('3'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('43'),
                                        )
                                      ]),TableRow(children :[

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('bhjkhljhkj',),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('2'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('3'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('43'),
                                        )
                                      ]),TableRow(children :[

                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('bhjkhljhkj',),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('2'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('3'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('43'),
                                        )
                                      ]),


                                    ]
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 40,
                              padding: EdgeInsets.only(left: 250),
                              child: TextField(
                                  controller: pricecontroller,
                                  keyboardType: TextInputType.number,


                                  style:const  TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration:const InputDecoration(

                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.red)
                                    ),
                                    hintText: "Rs. 856461",

                                    hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 250),
                              child: Text("Grand Total",style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              padding: EdgeInsets.only(left:120,right: 120),
                              child: ElevatedButton(onPressed: (){
                                  createproduct();
                              },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.red.withOpacity(0.7),
                                    minimumSize: const Size.fromHeight(45),
                                    maximumSize: const Size.fromHeight(50),

                                  ),
                                  child: Text("Save",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,


                                    ),

                                  )),

                            ),
                            SizedBox(height: 15.0,)
                          ],
                        ),
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



  Future<Product> createproduct() async {
  final response = await http.post(
  Uri.parse(
  'https://api-soori-ims-staging.dipendranath.com.np/api/v1/customer-order-app/save-customer-order'),
  body: {
  'packing_type_detail_code':pricecontroller.text,
    'qty': qtycontroller.text,
    'item':productnamecontroller.text,

  }

  );


  if (response.statusCode == 200) {

    CircularProgressIndicator();
    Fluttertoast.showToast(msg: "done");
    print("$productnamecontroller");

  return Product.fromJson(jsonDecode(response.body));
  }
  else {
  //  CircularProgressIndicator();
  throw Exception('Failed to create album.');
  }
  }
}
