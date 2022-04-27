
import 'package:easycare/Splash/splash_screen.dart';

import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({Key? key}) : super(key: key);

  @override
  _ProfileTabPageState createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  TextEditingController logoutController = TextEditingController();



  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("welcome user"),
            TextFormField(

              controller: logoutController,


            ),
            SizedBox(height: 50,),
            OutlinedButton.icon(
              onPressed: ()async{
                final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                sharedPreferences.remove('user_name');
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
              icon:Icon(
                Icons.exit_to_app,
                size : 18,

              ),
              label: Text("logout"),
            )
          ],
        ),
      ),
    );
  }

}
