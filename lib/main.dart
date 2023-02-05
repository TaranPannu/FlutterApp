import 'package:flutter/material.dart';
  void main(){// Fromhere execution of APP starts
runApp(    MaterialApp( home: MyApp(),),);
  }
/*This code is the main function of a Flutter application. It starts the execution of the app by calling
the runApp function, which is provided by the Flutter framework. The runApp function takes a widget tree
as an argument and uses it to render the UI on the screen.

In this code, the MaterialApp widget is passed as an argument to runApp, which creates an instance of the
 material design visual layout structure. The home property of MaterialApp is set to an instance of MyApp
 which is likely a custom widget that represents the root of the widget tree for the application.

When this code is executed, the MyApp widget will be rendered on the screen, and the UI for the Flutter
 app will be displayed.*/
class MyApp extends StatelessWidget {//Stateless can't change over time and enables hot reload
  @override
  Widget build(BuildContext context) {//build the widget /*The build method in Flutter is used to
    // construct a widget tree, which represents the user interface of an application.
    // The BuildContext argument is used to access data from the nearest ancestor widget that
    // provides it. The method should return a widget tree, which is typically a tree of Container,
    // Text, and other widgets. The widget tree returned by the build method is used to render the UI on
    // the screen*/
return Scaffold(
  appBar: AppBar(
    title: Text("Title"),
    centerTitle: true,
    backgroundColor: Colors.red,
  ),
  body:Column(
    children: [
      Row(children: [
        Container(
          child: Text("Hey",textScaleFactor: 2.0,),
          margin: EdgeInsets.all(30.0),
          color: Colors.deepOrange,

        ),
        Container(
          child: Text("Hey",textScaleFactor: 2.0,),
          margin: EdgeInsets.all(30.0),
          color: Colors.deepOrange,

        ),
        ElevatedButton(onPressed: (){}, child:Text("Click") )
      ],
      ),
      Row(children: [
        Container(
          child: Text("Hey",textScaleFactor: 2.0,),
          margin: EdgeInsets.all(30.0),
          color: Colors.deepOrange,

        ),
        Container(
          child: Text("Hey",textScaleFactor: 2.0,),
          margin: EdgeInsets.all(30.0),
          color: Colors.deepOrange,

        ),
      ],
      )
    ],

  ),
);
  }
}
