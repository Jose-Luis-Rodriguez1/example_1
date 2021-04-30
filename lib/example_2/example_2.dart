import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamplePage2 extends StatefulWidget {
  ExamplePage2({Key key}) : super(key: key);

  @override
  _ExamplePage2State createState() => _ExamplePage2State();
}

class _ExamplePage2State extends State<ExamplePage2> {
  int _number= 0;
  int residue;
  Color _colorText;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:_appBar(),
      body: Container(
        child: 
          Center(
            child: Text("Number: $_number",
                  style:TextStyle( fontSize: 45,color: _colorText, ),
            ),
          ),
      ),
      floatingActionButton:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _flaIncrement(),
          SizedBox(height: 10,),
          _flaIDerecremen(),
        ],
      ) ,
    );
  }

//widget//
  Widget _appBar(){
    return AppBar(
        title: Text("Example 2"),
    );
  }

  Widget _flaIncrement(){
    return FloatingActionButton.extended(
      onPressed: _incrementNumber, 
      label: Text("Increment"),
      icon: Icon(Icons.exposure_plus_1),
    );
  }


    Widget _flaIDerecremen(){
    return FloatingActionButton.extended(
      onPressed: _decrementNumber, 
      label: Text("Drecremet"),
      icon: Icon(Icons.exposure_minus_1),
    );
  }




//void///
void _incrementNumber(){
  _number++;
  residue = _number % 2 ;
    residue == 0  ? _colorText= Colors.red :_colorText= Colors.blue; 
  setState(() {

  });
} 

void _decrementNumber(){
  _number--;
  residue = _number % 2 ;
    residue == 0  ? _colorText= Colors.red :_colorText= Colors.blue; 
  setState(() {

  });
} 

}



