import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutternewapp/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time='loading';

void setupWorldTime() async{
  WorldTime instance=WorldTime(location: "Berlin", flag: 'germany.png', url: 'Europe/Berlin');
  await instance.getData();//we can only use await when function is async
  Navigator.pushReplacementNamed(context, "/home",arguments: {
    'location':instance.location,
    'flag':instance.flag,
    'time':instance.time,
    'isdayTime':instance.isdayTime
  });
}
  void initState(){
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SpinKitFadingCube(
      color: Colors.white,
      size: 50.0,
    ),

    );
  }
}
