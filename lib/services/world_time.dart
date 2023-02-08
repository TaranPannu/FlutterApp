import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location = ""; //location
  String time = ""; //time in that location
  String flag = ""; //url to asset flag icon
  String url = ""; //location url for API endpoints
  bool isdayTime=false;//f=deafult value
  WorldTime({required this.location, required this.flag, required this.url});


  Future<void> getData() async{//we have to use furture when we await for this function
    try{
  var client = http.Client();
  var uri = Uri.parse("http://worldtimeapi.org/api/timezone/$url");
  var response = await client.get(uri);
  Map data=jsonDecode(response.body);// we need to import 'dart:convert'; for this

  //GET Properties from data
  String dateTime =data['utc_datetime'];
  String offset=data['utc_offset'].substring(1,3);

  //Create DateTime Object
  DateTime now =DateTime.parse(dateTime);
  now=now.add(Duration(hours: int.parse(offset)));

  isdayTime=now.hour>6 && now.hour<20? true:false;//accordingly we will set background screen white/black
  //Set time property
  time=DateFormat.jm().format(now);
  }
    catch(e){
time="could'nt get data";
    }
  }

}
