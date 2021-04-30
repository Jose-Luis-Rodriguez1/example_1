
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamplePAge extends StatefulWidget {
  ExamplePAge({Key key}) : super(key: key);

  @override
  _ExamplePAgeState createState() => _ExamplePAgeState();
}

class _ExamplePAgeState extends State<ExamplePAge> {
  
  Widget _appBar(){
    return AppBar(
        title: Text("Example 1"),
       // backgroundColor:Colors.cyanAccent 
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_appBar(),
      body: Container(
        child: 
          Center(
            child: Text('hola mundo',
                  style:TextStyle(
                    fontSize: 45,
                    color: Colors.cyan,
                  ),
            ),
          ),
      ),

    );
  }
}