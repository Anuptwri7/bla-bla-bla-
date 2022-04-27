import 'package:flutter/material.dart';

class MoreTabPage extends StatefulWidget {
  const MoreTabPage({Key? key}) : super(key: key);

  @override
  _MoreTabPageState createState() => _MoreTabPageState();
}

class _MoreTabPageState extends State<MoreTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Text("More page"),
        ),
      ),
    );
  }
}
