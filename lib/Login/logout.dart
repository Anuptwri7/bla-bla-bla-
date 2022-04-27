import 'package:easycare/Login/login_screen.dart';
import 'package:easycare/Splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {

  TextEditingController logoutController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("welcome user"),
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
  Future <void> logout() async{
    var response = await http.post(Uri.parse("https://api-soori-ims-staging.dipendranath.com.np/api/v1/user-app/logout"),body:({
            'refresh': ''
    }) );
    if (response.statusCode==200){

      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Logout failed")));
    }
  }
}
