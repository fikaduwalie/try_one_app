import 'package:flutter/material.dart';
void main(){runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'fecebook',
    home: SecondPage(),
    theme: ThemeData(
      primarySwatch: Colors.orange
    ),
  ); 
  }
}
class FirstPage extends StatelessWidget {
  int _i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('App Bar'),),
      body:Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children:<Widget>[
            Center(
              child: Text(
                'value:${_i}',
                style: TextStyle(fontSize:20.0),
                ),
            ),
            ElevatedButton( child: Text('press'),
            onPressed: (){
              _i++;
              print(_i);
            })
          ]
        ),
      )
    );
  }
}
class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int _i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text('App Bar'),),
      body:Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children:<Widget>[
            Center(
              child: Text(
                'value:${_i}',
                style: TextStyle(fontSize:20.0),
                ),
            ),
            ElevatedButton( child: Text('press'),
            onPressed: (){
             setState(() {
               _i++;
             });
              print(_i);
            })
          ]
        ),
      )
    );
  }
}