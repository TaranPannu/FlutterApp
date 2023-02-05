import 'package:flutter/material.dart';
  void main(){// Fromhere execution of APP starts
runApp(    MaterialApp( home: MyApp(),),);
  }
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("ID Card"),
          centerTitle: true,
          backgroundColor: Colors.grey[850]),
      backgroundColor: Colors.grey[900],
    body: Padding(
      padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage("assets/login.png"),
          ),),
Divider(height: 60.0,color: Colors.grey[800],),
          Text("NAME",
              style: TextStyle(color: Colors.grey,
                  letterSpacing: 2.0,)),
          SizedBox(height: 10.0,),//this box will not be visible but it is a kind of space in between
          Text("Taranpreet",
              style: TextStyle(color: Colors.yellowAccent,
                  letterSpacing: 2.0,fontSize: 30.0)),
          SizedBox(height: 30.0,),
          Text("Level",
              style: TextStyle(color: Colors.grey,
                letterSpacing: 2.0,)),
          SizedBox(height: 5.0,),
          Text("8",
              style: TextStyle(color: Colors.yellowAccent,
                  letterSpacing: 2.0,fontSize: 30.0)),
          SizedBox(height: 30.0,),

          Row(children: [
            Icon(Icons.email,color: Colors.grey[350],),
            SizedBox(width: 10.0,),
            Text("abc@gmail.com",style: TextStyle(color: Colors.grey[400],letterSpacing: 2.0),)
          ],)
        ],
      ),
    ),

    );
  }
}
