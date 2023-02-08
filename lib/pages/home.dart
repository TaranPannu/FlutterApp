import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<dynamic,dynamic> data={};//declaring the map
  @override
  Widget build(BuildContext context) {

data=data.isEmpty? ModalRoute.of(context)!.settings.arguments as Map : data;
bool x=data['isDaytime']==null?false:data['isDaytime'];
String bgImg=x?'day.png':'night.png';
    return Scaffold(
      backgroundColor: Colors.white,
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/$bgImg'),
          fit: BoxFit.cover
        )
      )
      ,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0,120.0,0.0,0.0),
        child: SafeArea(//will display everything in a safearea where it will be visible
          child: Column(
            children: <Widget>[
TextButton.icon(onPressed:()async{//by pressing this button and going to other screen
  // and choosing location and comin back is the all big action

 dynamic result= await Navigator.pushNamed(context, "/location");//it will push location screen on its top home is still sitting underneath
// rest of the code will not run until we have our result back
  setState(() {
    data = {
      'time': result['time'],
      'location': result['location'],
      'isDaytime': result['isDaytime'],
      'flag': result['flag']
    };
  });
},
    icon: Icon(Icons.edit_location_alt,color: Colors.white,),

  label:Text( "location",style: TextStyle(color: Colors.white))
),
              SizedBox(height:20.0),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
        Text(data['location'],style: TextStyle(
          fontSize: 28.0,letterSpacing: 2.0,color: Colors.white
        ),)
  ],
),
              SizedBox(height: 20.0,),
              Text(data['time'],
              style: TextStyle(fontSize: 66.0,letterSpacing: 2.0,color: Colors.white),)
            ],
          ),
        ),
      ),
    ),);
  }
}
