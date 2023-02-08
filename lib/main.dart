import 'package:flutter/material.dart';
import 'package:flutternewapp/pages/choose_location.dart';
import 'package:flutternewapp/pages/home.dart';
import 'package:flutternewapp/pages/loading.dart';

  void main(){// From here execution of APP starts
return runApp(MaterialApp(
initialRoute: '/',//this going to be the initial route and will overwrite the "/"=>screen
  routes: {
    '/': (context)=> Loading(),
    '/home':(context)=> Home(),
    '/location':(context)=> ChooseLocation(),

  },


));
  }

