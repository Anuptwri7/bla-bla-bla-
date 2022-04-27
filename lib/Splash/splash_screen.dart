import 'dart:async';
import 'package:easycare/Login/login_screen.dart';
import 'package:easycare/MainPage/main_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

String ? finalName ;

class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {




  @override
  void initState() {
    // TODO: implement initState
    super.initState();

 getValidation().whenComplete(() async{
   Timer(Duration(), ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>finalName== null ? LoginScreen(): MainScreen())));
 });

  }

  Future getValidation ()async{
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var obtainname = sharedPreferences.getString("user_name");
    setState(() {
      finalName = obtainname!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Splash Screen"),
      ),

    );
  }
}